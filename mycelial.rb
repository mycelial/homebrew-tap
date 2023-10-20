class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.1.0"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.1.1/mycelial-aarch64-apple-darwin.tgz"
      sha256 "edb38feabfab4cf6811bbdbd65177cd80200cda4084028bfe8de6a0f759d337f"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.1.1/mycelial-x86_64-apple-darwin.tgz"
      sha256 "a8d00ff622a1ba8d8533593effa552af550b8daf331cffc1ffbaaf368f423f6c"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.1.1/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "ad1fce0e2759b83581f48f5f7415072d807fec7fbb2204a6c848e535fa758a84"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.1.1/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "2fc812529264452b2fed0721acd164b462ccde3d7b838ad96cf35b109fdbc4c9"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.1.1/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "5c892f883d6273a3719e3b35bc683368d7fcff97097b4f3334141dadc2b41870"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
