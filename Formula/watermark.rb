class Watermark < Formula
  desc "Interactive CLI tool to add watermarks to images and PDF files"
  homepage "https://github.com/Zarox28-Projects/Watermark"
  version "0.0.13"
  license "AGPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/Zarox28-Projects/Watermark/releases/download/v0.0.13/watermark-darwin-amd64"
      sha256 ""
    end

    on_arm do
      url "https://github.com/Zarox28-Projects/Watermark/releases/download/v0.0.13/watermark-darwin-arm64"
      sha256 ""
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
