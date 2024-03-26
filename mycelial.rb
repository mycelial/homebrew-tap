class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.12.0"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.12.0/mycelial-aarch64-apple-darwin.tgz"
      sha256 "89ad116a3ffc5c23e29ce881fb330c166e69112c1ce1ef551c352111201634dd"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.12.0/mycelial-x86_64-apple-darwin.tgz"
      sha256 "28e7a21e0649fd1beb7a54bf692f16488b81f2430aae0fc1c8997ff80ccdace5"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.12.0/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "4ccedad5795bd2f761c89e69c2ccc9597b3a2ad12fe810cb83667ee3e237db0d"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.12.0/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "ef9d08d48acdff2817f568e47af850530322c4cd70e291ac2f782ee147218630"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.12.0/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "6769b4c76f04f2e33deb258f8dce9c67f84da99a76b3bfe7a37d87095323fc4b"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
