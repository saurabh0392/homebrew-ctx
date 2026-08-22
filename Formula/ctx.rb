class Ctx < Formula
  desc "Local context layer for AI coding agents: see the bill, trim only what randomized checks clear"
  homepage "https://github.com/saurabh0392/ctx"
  version "0.7.3"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/saurabh0392/ctx/releases/download/v0.7.3/ctx-aarch64-apple-darwin.tar.gz"
    sha256 "9886e76cae2d4ab1baa25422a835529fbc9f167ce52cc6a12445d11ca87199c8"
  end

  on_intel do
    url "https://github.com/saurabh0392/ctx/releases/download/v0.7.3/ctx-x86_64-apple-darwin.tar.gz"
    sha256 "3a24e1d12883dc30c1cb587c01ae60c711a0aa2722ad5ff76d1bb228e6625926"
  end

  def install
    bin.install "ctx"
  end

  test do
    system "#{bin}/ctx", "--version"
  end
end
