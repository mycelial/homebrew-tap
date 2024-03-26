class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.11.1"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.11.1/mycelial-aarch64-apple-darwin.tgz"
      sha256 "52af0137ebc35614033ea20c6e6bb5b7c5341d51df7a7f5d49008fa017e0fbbc"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.11.1/mycelial-x86_64-apple-darwin.tgz"
      sha256 "2f8488b572a2b32638a520d27d7c236fb5b4b6bdbadd17b22bbde5e6ab975b05"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.11.1/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "f502c29c3b8fa8dd2a5163a66ba613c781d910bf4e00cebf816f6ed7e287897b"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.11.1/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "63d1030faaff1186511541790e495997435a75ca2597029e56f3574276a75be1"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.11.1/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "5500a056a37f29029884fb580bdb5ae339f4d9c5a6cd8d56605da3ff114e4e65"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
