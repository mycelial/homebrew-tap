class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.1.4"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.1.4/mycelial-aarch64-apple-darwin.tgz"
      sha256 "23469cf0a27c927e2c998ef337e2fbb883d0f8d974c4ac4a2dbde0cc45618f94"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.1.4/mycelial-x86_64-apple-darwin.tgz"
      sha256 "5178d61a0972f4c5397b78e45f07ba3b35e9bed82d16dae34286605d7d8306e2"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.1.4/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "5dc87903ce50d64b56590a6203ba2d5f0f0d688ba07fc1575c419e934bb1718c"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.1.4/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "857ec5732cb1c2b2a430be29737410eca503c9fc0910b75e2a239193e0673cb5"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.1.4/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "a766f8b45c3b75a80182f951797bc8ef34251344a7002c2d3d06c1577af17e2a"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
