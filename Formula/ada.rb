class Ada < Formula
  desc "AI Assistant with Intent Routing"
  homepage "https://github.com/kennetheversole/ada"
  version "0.1.1"

  if Hardware::CPU.arm?
    url "https://github.com/kennetheversole/ada/releases/download/v0.1.1/ada-aarch64-apple-darwin.tar.gz"
    sha256 "cf850f4e076dbcad53b351787c9a02a1d96448221267394c0d2d5e4e3e75688d"
  else
    url "https://github.com/kennetheversole/ada/releases/download/v0.1.1/ada-x86_64-apple-darwin.tar.gz"
    sha256 "a2ee2e4d7480ef1be8afb0ca3c0df45e8fd7c9679ae8d8c53c554f3d8f9bafc7"
  end

  def install
    bin.install "ada"
  end

  test do
    assert_match "ada 0.1.1", shell_output("#{bin}/ada --version")
  end
end
