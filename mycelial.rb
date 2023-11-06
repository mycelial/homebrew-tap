class Mycelial < Formula
  desc "A CLI tool for managing mycelial projects."
  homepage "https://mycelial.com"
  version "0.1.4"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mycelial/cli/releases/download/v0.1.5/mycelial-aarch64-apple-darwin.tgz"
      sha256 "a41f5a03d103a08875105fb5aa1a964c8f74c9c156c1669d1aafb3faa16a0764"

    end

    if Hardware::CPU.intel?
      url "https://github.com/mycelial/cli/releases/download/v0.1.5/mycelial-x86_64-apple-darwin.tgz"
      sha256 "4ef60a1fd02ab1050a4f1b4370006aebb6b960ee319efd4c06667486a3314df6"

    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.1.5/mycelial-aarch64-unknown-linux-gnu.tgz"
      sha256 "ec44b0a7e43fdf1d1aae7a57050033646160298cba852778768dea9bab0aca30"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.1.5/mycelial-arm-unknown-linux-gnueabihf.tgz"
      sha256 "f37350f0b7f9712c665a1880b4dfd746cb15bd6c8a2aec9db8e41414ccbe23bb"

    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/mycelial/cli/releases/download/v0.1.5/mycelial-x86_64-unknown-linux-gnu.tgz"
      sha256 "530c369e1497b8a0575b3eac99026f5e39a4261e1e5c3ec2f5dad94d2b9a4b6f"

    end
  end

  def install 
    bin.install "mycelial"
  end

end
