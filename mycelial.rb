class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.1.3"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.1.3/mycelial-aarch64-apple-darwin.tgz"
      sha256 "4f855d3d9d2bc701db419daf21c956171207f71c0b8d14581e011a3840ed9bd9"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.1.3/mycelial-x86_64-apple-darwin.tgz"
      sha256 "f80e3b9a592840b7c8308af46536ff85f95300aa524334cd57c4459ef5d19a42"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.1.3/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "29ee04b53e433142900867fc98840fa47f1cf7cdb3587efd47bda8cc91559b2e"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.1.3/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "779ed939d32a0a37e5757aa8f1cb80d33d6d01f15b2d4aa2d73ca85ff5d917d2"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.1.3/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "e678dd2ef5ed47cd7236ef94baf9bae4a205044462be090cb8263495dffaf06e"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
