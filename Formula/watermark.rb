class Watermark < Formula
  desc "Interactive CLI tool to add watermarks to images and PDF files"
  homepage "https://github.com/Zarox28-Projects/Watermark"
  version "0.0.11"
  license "AGPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/Zarox28-Projects/Watermark/releases/download/v0.0.11/watermark-darwin-amd64"
      sha256 "143752685a10c29955daabe60247382389b9082ff10528da3f774b9561f095c0"
    end

    on_arm do
      url "https://github.com/Zarox28-Projects/Watermark/releases/download/v0.0.11/watermark-darwin-arm64"
      sha256 "e40944aadfb55098632043e3d7e053deb2f5e732de09569e38e4f5760929e36a"
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
