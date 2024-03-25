class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.11.0"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.11.0/mycelial-aarch64-apple-darwin.tgz"
      sha256 "0bbfa1f03560e08e203b04524527dce150f460e15e5103954d3486fdabf2ca64"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.11.0/mycelial-x86_64-apple-darwin.tgz"
      sha256 "3f3456362a45c66dbc4b6ee3a88f0ac62299e4a748f5c38973f1ac48dba33066"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.11.0/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "fa903c508efe93366a0f798d925581baaa824d5893df6fe0e5c3fb9eb538a89d"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.11.0/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "e73118e95cf9d76c05aa8599f06be0c7bea329d5ef1a7503f64f7b091dfa4b6d"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.11.0/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "b43eb7df090f710ac999e30068a851edb65c31a814fff54479755f82f525463f"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
