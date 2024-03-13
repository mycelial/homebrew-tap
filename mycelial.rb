class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.10.0"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.10.0/mycelial-aarch64-apple-darwin.tgz"
      sha256 "86ce29789a0e32b0546134ee13ab98c196d8fbca6d3069231fe7074eb4825ed5"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.10.0/mycelial-x86_64-apple-darwin.tgz"
      sha256 "48cb874df557596c361a99210455cfc67c2e9d6ea7fdfa113771e282c46bdc6e"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.10.0/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "2215db2da5ef64f77b92c86359fe97a30204634bc4cc17a487ac565dbadf48a8"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.10.0/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "7363937ac98b87961b405495cc743a173e658013087ddb050437189f7e790417"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.10.0/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "92e8431f2e0b831d9ef47eea09127b6f16dce8913d65a413b89f2816e343a8c1"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
