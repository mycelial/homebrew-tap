class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.9.0"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.9.0/mycelial-aarch64-apple-darwin.tgz"
      sha256 "34b7344c7573c570a135e09d031af4ae6c311fa3db104f2d2d4f0826d80a6359"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.9.0/mycelial-x86_64-apple-darwin.tgz"
      sha256 "8b3b01a61411c0e12046790d5c1c4694dddcbfff6e1c80ccbe38b64d52e6be2b"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.9.0/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "9e07bea0c82cba7482d9d7a721006d742a0982f11ad776ac7a57d00d05b26baf"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.9.0/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "3055332cff8c1c3c6eff48477608c7f57e6e504609cae41e695be4ac88e7bbf8"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.9.0/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "c229bf45922d0cf723fd8342a7cb615a98ac1a65632ef18e0e38ed2b3143802b"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
