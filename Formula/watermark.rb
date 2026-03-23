class Watermark < Formula
  desc "Interactive CLI tool to add watermarks to images and PDF files"
  homepage "https://github.com/Zarox28-Projects/Watermark"
  version "0.0.14"
  license "AGPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/Zarox28-Projects/Watermark/releases/download/v0.0.14/watermark-darwin-amd64"
      sha256 "33df1847b2f4572569c256ece995330eb57c37ecdd84d3f854d4498dadc1d359"
    end

    on_arm do
      url "https://github.com/Zarox28-Projects/Watermark/releases/download/v0.0.14/watermark-darwin-arm64"
      sha256 "c7faa958493642c8ab15488fc05da21cfbc3cb0a75686b5657e2d3d2f4f7b7c7"
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
