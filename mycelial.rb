class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.4.0"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.4.0/mycelial-aarch64-apple-darwin.tgz"
      sha256 "dbad52a258dba329ed9e8be4b0de7a3b6e364a87687be724f4cf4a61240b938c"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.4.0/mycelial-x86_64-apple-darwin.tgz"
      sha256 "9054c3d02581f5bbeed72749276a26d4e1ec205b26349104e67fa39f4f6fa81d"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.4.0/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "0ddacea4d2026ab5b7f0e1e2ce06b4db4d8b6e3f16b6220db850f94a1859525c"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.4.0/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "89bd77e42b5ce2430f8013ca0598da4518229edbe84a2188529dcd4479e74a2d"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.4.0/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "885a7dc546dfabc2daab73f4619a7751c5759475a5305fc0acd840fef9f79f13"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
