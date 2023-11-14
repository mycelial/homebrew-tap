class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.3.0"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.3.0/mycelial-aarch64-apple-darwin.tgz"
      sha256 "a2663a334c6553e1b360e98274eb7e7386b64458bcc123b8f74625795662be2b"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.3.0/mycelial-x86_64-apple-darwin.tgz"
      sha256 "789cfc80c5d9470561d9156739802c9fa7bde1efb39104efa16c4453dc37b5a0"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.3.0/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "ceb2af1bd891db7d43d6f0d81678f3f368520a2a15d25d3fdc2655404f2b2c73"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.3.0/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "d8d54a19419eb3b0012a562065d64f1483a5b2f6c4266ee846516467612fe0a3"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.3.0/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "57952fdb7834530143d93aa65522cc8e96466c885c38b049f9c3b8c9dcd7b8b9"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
