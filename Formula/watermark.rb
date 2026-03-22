class Watermark < Formula
  desc "Interactive CLI tool to add watermarks to images and PDF files"
  homepage "https://github.com/Zarox28-Projects/Watermark"
  version "0.0.10"
  license "AGPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/Zarox28-Projects/Watermark/releases/download/v0.0.10/watermark-darwin-amd64"
      sha256 "2eeee9c5a32cddc19cf79335a2c4682a1d55c9e702c9bf70f43de5c652a4e0e2"
    end

    on_arm do
      url "https://github.com/Zarox28-Projects/Watermark/releases/download/v0.0.10/watermark-darwin-arm64"
      sha256 "d16d9f3d6d8f26172d90279353e8af43c1e72c514a91977ec80c5444bd7d5c7a"
    end
  end

  def install
    binary = Hardware::CPU.intel? ? "watermark-darwin-amd64" : "watermark-darwin-arm64"
    bin.install binary => "watermark"
  end

  test do
    system "#{bin}/watermark", "--help"
  end
end
