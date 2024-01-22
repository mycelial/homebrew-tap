class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.7.0"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.7.0/mycelial-aarch64-apple-darwin.tgz"
      sha256 "006310c6b7610cef4b8424f42cb0849ee089c6c2c124e0eda7ac528ff6048b1a"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.7.0/mycelial-x86_64-apple-darwin.tgz"
      sha256 "57897e813c287424b34c602c47fbd38d3dc6ded931ee2922ccc91941c2e2965e"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.7.0/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "66683fb777ca30ffbd306fa2060028bc4e8faa20109b04e1e5c936f13f8e869b"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.7.0/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "de101c87d6f59d2ff49e401eae104efddf2474b95dbd531daa3fc50fd7d5f9f8"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.7.0/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "1cb7258624a0a427818a1b05b44252c53a63b91218595eeba9be794083593b20"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
