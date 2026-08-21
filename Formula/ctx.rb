class Ctx < Formula
  desc "Local context layer for AI coding agents: see the bill, trim only what randomized checks clear"
  homepage "https://github.com/saurabh0392/ctx"
  version "0.7.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/saurabh0392/ctx/releases/download/v0.7.1/ctx-aarch64-apple-darwin.tar.gz"
    sha256 "bc828b898b4c5b019ce173bf19d37ae5fce429e5fd62db81312430cb18afa3ac"
  end

  on_intel do
    url "https://github.com/saurabh0392/ctx/releases/download/v0.7.1/ctx-x86_64-apple-darwin.tar.gz"
    sha256 "64c7d5920de3cd10cc47b51c7f2eaecfe4e3d8020bc46928993d566d29713352"
  end

  def install
    bin.install "ctx"
  end

  test do
    system "#{bin}/ctx", "--version"
  end
end
