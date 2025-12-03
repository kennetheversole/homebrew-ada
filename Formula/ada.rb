class Ada < Formula
  desc "AI Assistant with Intent Routing"
  homepage "https://github.com/kennetheversole/ada"
  version "0.1.1"

  if Hardware::CPU.arm?
    url "https://github.com/kennetheversole/ada/releases/download/v0.1.1/ada-aarch64-apple-darwin.tar.gz"
    sha256 "f7229d307817845118c76d2be2961712f178f7572d0930f5260c7242a8785ef0"
  else
    url "https://github.com/kennetheversole/ada/releases/download/v0.1.1/ada-x86_64-apple-darwin.tar.gz"
    sha256 "a71d3fbccad18bb2ad1a5e0201601719fba806c57d8e93167f851a25a8faed28"
  end

  def install
    bin.install "ada"
  end

  test do
    assert_match "ada 0.1.1", shell_output("#{bin}/ada --version")
  end
end
