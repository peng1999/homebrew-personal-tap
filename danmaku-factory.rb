class DanmakuFactory < Formula
  desc "Convert XML Danmaku to ASS format"
  homepage "https://github.com/hihkm/DanmakuFactory"
  url "https://github.com/hihkm/DanmakuFactory/archive/refs/tags/v1.70.tar.gz"
  sha256 "2159ce1e108a0a989712e90501b41dfb8a2e36f33667a856610127b04f15e902"
  license "GPL-3.0-only"

  head "https://github.com/hihkm/DanmakuFactory.git", branch: "master"

  def install
    system "make"
    bin.install "DanmakuFactory"
  end

  test do
    system "#{bin}/DanmakuFactory", "--help"
  end
end
