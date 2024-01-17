class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.6.0"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.6.0/mycelial-aarch64-apple-darwin.tgz"
      sha256 "325dc5e217c32a0128ba50a434346f6ea289ce0a88ac1f0535fef89adba8295e"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.6.0/mycelial-x86_64-apple-darwin.tgz"
      sha256 "04ed4aff90d2cb39afdcec59750212e00207f234ef0bbc0592038199dbf159ea"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.6.0/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "c92bcbca1d5b3c252e27062f516997b471705b9102ef657ce0a957fc1f6c7e2e"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.6.0/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "a41b15a2e4ede6d125be445f097ec61bc7990935b6f3167e2e39807606fa7e43"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.6.0/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "de48b157ca1dd2fd8963c810a3f5059a9c8bf49e0855671c5bd23763ff157af7"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
