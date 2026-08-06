class Ctx < Formula
  desc "Local context layer for AI coding agents: see the bill, trim only what is proven safe"
  homepage "https://github.com/saurabh0392/ctx"
  url "https://github.com/saurabh0392/ctx/releases/download/v0.7.0/ctx-aarch64-apple-darwin.tar.gz"
  sha256 "506138552c539c27f982cdd093c7e1c63716209022c36ad01847a16726282d50"
  version "0.7.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "ctx"
  end

  test do
    system "#{bin}/ctx", "--version"
  end
end
