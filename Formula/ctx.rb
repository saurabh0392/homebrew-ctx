class Ctx < Formula
  desc "Local context layer for AI coding agents: see the bill, trim only what randomized checks clear"
  homepage "https://github.com/saurabh0392/ctx"
  version "0.7.4"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/saurabh0392/ctx/releases/download/v0.7.4/ctx-aarch64-apple-darwin.tar.gz"
    sha256 "185717f8cf783f9572073b4b1376cb9f104e609ff447bb1d3506f08e7742de86"
  end

  on_intel do
    url "https://github.com/saurabh0392/ctx/releases/download/v0.7.4/ctx-x86_64-apple-darwin.tar.gz"
    sha256 "808250372b1410d29d78574b10ca7cd68faead04b074b691431ff844929f0972"
  end

  def install
    bin.install "ctx"
  end

  test do
    system "#{bin}/ctx", "--version"
  end
end
