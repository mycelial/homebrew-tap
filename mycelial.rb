class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.8.0"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.8.0/mycelial-aarch64-apple-darwin.tgz"
      sha256 "9959c4d4b8b1ff20974ebf53aaa51f388e2be0eae7dd51bed8cdb1fa90a49fd9"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.8.0/mycelial-x86_64-apple-darwin.tgz"
      sha256 "a08a15daaa1299c60fb8c05405a5d90f9e44517d961ef60746f153b41cf850e8"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.8.0/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "ac14bc1b341bf5a904f1d784086c949bae4fd17aa74198a27ee0aa39c2c796e5"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.8.0/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "5c1611fff28a6d205d370dca499d5d0a073843a8907d921c337dbb26a44d21ba"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.8.0/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "def6be396285b39ce559dd848e57fb5a59692486c97a24279c681f4d4ad2fdb0"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
