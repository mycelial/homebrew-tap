class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.5.1"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.5.1/mycelial-aarch64-apple-darwin.tgz"
      sha256 "fa150f8936b284eaf650d7268cab95ac5b591b0f82a14081416efb364c152d8e"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.5.1/mycelial-x86_64-apple-darwin.tgz"
      sha256 "f67506e8811ae0154389200ff12a2bf747c0266ee2d7222729e53df68a9d9930"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.5.1/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "f2b1e8ff3ebfcc98e7bd9651363bd3f83e80a2018d4f6f86d63ad3c7362b0df6"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.5.1/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "b9da4e9841c424185a0b5249c392f20c76a9c03ca37c0bf4817d5b827a6fc8f4"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.5.1/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "ab6159444448c89b9e20200de403c31684ed9e2ce0ca344a75b10e9a7ef3403d"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
