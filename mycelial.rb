class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.2.0"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.2.0/mycelial-aarch64-apple-darwin.tgz"
      sha256 "c1c9261c4546746da83aa1e59c6621980a6b86cfa94d8bed1bcf9b927f665e38"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.2.0/mycelial-x86_64-apple-darwin.tgz"
      sha256 "b79c9c4a4b60c914f90f9f648a0eec03f8ad569639ffc4b05036f3fe65dca69b"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.2.0/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "69d7da88b872ea2abd21eaed13e91962bb8f72d23399c9f09322aead1ad48df2"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.2.0/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "59b388fedb82825b2d4b3053d17b974ceb20ec37d220331d731d1f5bf53e97e1"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.2.0/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "7510ac99d84f7194b003de2cb4a82803eec52a86d35b7af234457dd3a95c576e"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
