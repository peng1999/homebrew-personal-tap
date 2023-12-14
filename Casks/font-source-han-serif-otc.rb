cask "font-source-han-serif-otc" do
  version "2.002"
  sha256 "3868cbad34109776e2bbf4ec6caaccdab46a41389a720b4be191af4268784df1"

  url "https://github.com/adobe-fonts/source-han-serif/releases/download/#{version}R/01_SourceHanSerif.ttc.zip"
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
