class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.7.1"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.7.1/mycelial-aarch64-apple-darwin.tgz"
      sha256 "18948e5b63f8978a65ab894de119cdff27de236d223303e33001318a91b3d196"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.7.1/mycelial-x86_64-apple-darwin.tgz"
      sha256 "220dfcbffb8b24cde4d400fe34d314f1f945698e70f6fceb5bf8b024e6f193e0"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.7.1/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "2a99494311969e7b96470edfd1bd9b8c897768d9e0d69b92a134dc182c4bbccf"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.7.1/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "d964138328369926781a158c668d77556301ae1cfe5a5e712cf84a4a2709f160"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.7.1/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "d91787fe2615ff5ccc5b263e1214e0ebf50f2edddd2d52a289b62d22344fd18d"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
