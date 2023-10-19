class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.1.0"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.1.0/mycelial-aarch64-apple-darwin.tgz"
      sha256 "c589d1a07d924975ae41326bba167ba7f337e2c7c29fcac95f66bad51e5afc3f"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.1.0/mycelial-x86_64-apple-darwin.tgz"
      sha256 "582bf61974c6fd3b12da51e02928365c4b96073c3800f10e2f1f506bb10e11ad"

    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/mycelial/cli/releases/download/v0.1.0/mycelial-aarch64-unknown-linux-gnu.tgz"
        sha256 "53555161d661c73c009d3ee602d899feea7a4d1d20ffffe5837a3557fdb9cfc9"

      end
      if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
        url "https://github.com/mycelial/cli/releases/download/v0.1.0/mycelial-arm-unknown-linux-gnueabihf.tgz"
        sha256 "075f98a6c2e8de84f45b8393f2022214e43c2d0f18dacfac2f6944a0eb389d24"

      end
      if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
        url "https://github.com/mycelial/cli/releases/download/v0.1.0/mycelial-x86_64-unknown-linux-gnu.tgz"
        sha256 "d365c2d2dc1ee967d2bc36e711df7d8a9c54f82767d35ca534c5b1100bc41a4b"

      end
    end

    def install 
      bin.install "mycelial"
    end

end