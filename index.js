import axios from 'axios';
import fs from 'fs';
import crypto from 'crypto';
import mustache from 'mustache';
import { execSync } from 'child_process';

async function main() {
  const response = await axios.get(
    'https://api.github.com/repos/mycelial/cli/releases/latest',
  );
  const version = response.data.tag_name.replace('v', '');
  if (is_same_version(version)) {
    console.log(`Version ${version} is already released`);
    return;
  }

  const macos_arm = response.data.assets.find(
    (asset) => asset.name === `mycelial-aarch64-apple-darwin.tgz`,
  );
  const macos_arm_url = macos_arm.browser_download_url;
  const macos_arm_sha256 = await get_sha_256(macos_arm_url);

  const macos_intel = response.data.assets.find(
    (asset) => asset.name === `mycelial-x86_64-apple-darwin.tgz`,
  );
  const macos_intel_url = macos_intel.browser_download_url;
  const macos_intel_sha256 = await get_sha_256(macos_intel_url);

  const linux_arm64 = response.data.assets.find(
    (asset) => asset.name === `mycelial-aarch64-unknown-linux-gnu.tgz`,
  );
  const linux_arm64_url = linux_arm64.browser_download_url;
  const linux_arm64_sha256 = await get_sha_256(linux_arm64_url);

  const linux_arm32 = response.data.assets.find(
    (asset) => asset.name === `mycelial-arm-unknown-linux-gnueabihf.tgz`,
  );
  const linux_arm32_url = linux_arm32.browser_download_url;
  const linux_arm32_sha256 = await get_sha_256(linux_arm32_url);

  const linux_intel = response.data.assets.find(
    (asset) => asset.name === `mycelial-x86_64-unknown-linux-gnu.tgz`,
  );
  const linux_intel_url = linux_intel.browser_download_url;
  const linux_intel_sha256 = await get_sha_256(linux_intel_url);
  const template = fs.readFileSync('./mycelial.rb.mustache', 'utf8');
  const view = {
    version,
    macos_arm_url,
    macos_arm_sha256,
    macos_intel_url,
    macos_intel_sha256,
    linux_arm64_url,
    linux_arm64_sha256,
    linux_arm32_url,
    linux_arm32_sha256,
    linux_intel_url,
    linux_intel_sha256,
  };
  const output = mustache.render(template, view);
  fs.writeFileSync('./mycelial.rb', output);
  execSync(
    'git config user.email "github-actions[bot]@users.noreply.github.com"',
  );
  execSync('git config user.name "github-actions[bot]"');
  execSync('git add ./mycelial.rb');
  execSync(`git commit -m "Update to ${version}"`);
  execSync('git push');
}

function is_same_version(version) {
  const contents = fs.readFileSync('./mycelial.rb', 'utf8');
  const version_regex = /version\s*\s*['"]([^'"]+)['"]/;
  const match = contents.match(version_regex);
  return match[1] === version;
}

async function get_sha_256(file_url) {
  await download(file_url, `./mycelial.tgz`);
  const sha256 = await calculate_sha_256(`./mycelial.tgz`);
  fs.unlinkSync(`./mycelial.tgz`);
  return sha256;
}

async function download(file_url, output_location_path) {
  const writer = fs.createWriteStream(output_location_path);

  const response = await axios({
    url: file_url,
    method: 'GET',
    responseType: 'stream',
  });

  response.data.pipe(writer);

  return new Promise((resolve, reject) => {
    writer.on('finish', resolve);
    writer.on('error', reject);
  });
}

function calculate_sha_256(filePath) {
  return new Promise((resolve, reject) => {
    const hash = crypto.createHash('sha256');

    const stream = fs.createReadStream(filePath);

    stream.on('data', function (chunk) {
      hash.update(chunk);
    });

    stream.on('end', function () {
      const fileHash = hash.digest('hex');
      resolve(fileHash);
    });

    stream.on('error', function (err) {
      reject(err);
    });
  });
}

main().catch(console.error);
