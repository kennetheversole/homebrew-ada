class Ada < Formula
  desc "AI Assistant with Intent Routing"
  homepage "https://github.com/kennetheversole/ada"
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/kennetheversole/ada/releases/download/v0.1.0/ada-aarch64-apple-darwin.tar.gz"
    sha256 "REPLACE_WITH_AARCH64_SHA256"
  else
    url "https://github.com/kennetheversole/ada/releases/download/v0.1.0/ada-x86_64-apple-darwin.tar.gz"
    sha256 "REPLACE_WITH_X86_64_SHA256"
  end

  def install
    bin.install "ada"
  end

  test do
    assert_match "ada 0.1.0", shell_output("#{bin}/ada --version")
  end
end
