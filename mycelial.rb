class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.5.0"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.5.0/mycelial-aarch64-apple-darwin.tgz"
      sha256 "d24742cd59a44b71031df40787d682ebd8de6e81dd48064191287278cf929f91"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.5.0/mycelial-x86_64-apple-darwin.tgz"
      sha256 "ae64e0752b518261219f42564792b93bb4960d7dccc18163a51c4a0dca0e438e"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.5.0/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "40d9b6fbab4fca56c53f0ab81f9eed373e826bf842dd6a75a105692eac87eb55"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.5.0/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "307068d1d159abb507d30e88cb51bb6467412ebb8a2543485e1fad2b6e1ee20d"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.5.0/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "976a6b7bf006db8249f19bff65a395b4324647613047f81de2ddaac6b09abfb4"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
