cask "font-source-han-serif-otc" do
  version "2.002"
  sha256 "6e696a382d12cf7c11d29573101af7ce5adf698f2489eac052dab4772a5d4ffa"

  url "https://github.com/adobe-fonts/source-han-serif/releases/download/#{version}R/03_SourceHanSerifOTC.zip"
  name "Source Han Sans OTC"
  desc "OpenType/CFF Pan-CJK fonts"
  homepage "https://github.com/adobe-fonts/source-han-serif"

  livecheck do
    url "https://github.com/adobe-fonts/source-han-serif/releases/latest"
    strategy :page_match
    regex(%r{tag/(\d+(?:\.\d+)*)}i)
  end

  font "SourceHanSerif.ttc"
end
