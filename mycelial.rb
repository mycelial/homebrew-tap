class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.1.2"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.1.2/mycelial-aarch64-apple-darwin.tgz"
      sha256 "de3e1c528c9007b4d987730a288ae360fcae83de534cfbc50356f36283e993f2"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.1.2/mycelial-x86_64-apple-darwin.tgz"
      sha256 "94b08350004a4f1a3b978e94e91759faaa31b7f63fa15b6ebfd77859b97e275f"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.1.2/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "f142f352a1042ee1b849b3cd5c032d96bf428e18bbf89f8d324f1dd2845923d8"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.1.2/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "fd4f1cc8d83abfbe45e26e916a00b90ef7da5512eef0cad2439bbda80050cdfa"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.1.2/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "782a73c593076fd1cefc8a27425d5c572e549a0f6de727221143fe8ebbc4f358"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
