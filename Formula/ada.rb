class Ada < Formula
  desc "AI Assistant with Intent Routing"
  homepage "https://github.com/kennetheversole/ada"
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/kennetheversole/ada/releases/download/v0.1.0/ada-aarch64-apple-darwin.tar.gz"
    sha256 "7bd94533f9970ed2c5c58b64eef1becfa8c2ae34fb3d5b4cd1ed2f1b327db46f"
  else
    url "https://github.com/kennetheversole/ada/releases/download/v0.1.0/ada-x86_64-apple-darwin.tar.gz"
    sha256 "06c0fd47b2985a61eb1159d20487201fb816d146152762a321fc8e114dc0c5e3"
  end

  def install
    bin.install "ada"
  end

  test do
    assert_match "ada 0.1.0", shell_output("#{bin}/ada --version")
  end
end
