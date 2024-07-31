# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ossutil < Formula
  desc "The command line interface of oss of aliyun."
  homepage "https://github.com/aliyun/ossutil"

  on_macos do
    if Hardware::CPU.arm?
      url "https://gosspublic.alicdn.com/ossutil/1.7.19/ossutil-v1.7.19-mac-arm64.zip"
      sha256 "10ece4d328c5d2440833adc5f4167168e9b2a4c5d364f673b0c45bcc4fd02ec5"

      def install
        bin.install "ossutilmac64" => "ossutil"
      end
    end
  end

  test do
    system "#{bin}/ossutil", "-h"
  end
end
