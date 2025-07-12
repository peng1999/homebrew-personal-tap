class Dandanplay < Formula
  desc "Danmaku player"
  homepage "https://github.com/zhongfly/dandanplay"
  head "https://github.com/zhongfly/dandanplay.git", branch: "main"

  depends_on "go"

  def install
    system "go", "build", "-ldflags=-s -w", "-o", "dandanplay", "main.go"
    bin.install "dandanplay"
  end

  test do
    system bin/"dandanplay", "-h"
  end
end
