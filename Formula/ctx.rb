class Ctx < Formula
  desc "Local context layer for AI coding agents: see the bill, trim only what randomized checks clear"
  homepage "https://github.com/saurabh0392/ctx"
  version "0.7.2"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/saurabh0392/ctx/releases/download/v0.7.2/ctx-aarch64-apple-darwin.tar.gz"
    sha256 "b267f6be1a76c5eaf02767123bac8f587fc7aaa0b1e53f8f39738158174f8cd6"
  end

  on_intel do
    url "https://github.com/saurabh0392/ctx/releases/download/v0.7.2/ctx-x86_64-apple-darwin.tar.gz"
    sha256 "ea7c4c2f10fdd571bedce13e07ddc7b6d1936121cb5d9f712eb1769940f99f51"
  end

  def install
    bin.install "ctx"
  end

  test do
    system "#{bin}/ctx", "--version"
  end
end
