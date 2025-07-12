cask "font-source-han-serif-vf" do
  version "2.003"
  sha256 ""

  url "https://github.com/adobe-fonts/source-han-serif/raw/#{version}R/Variable/OTC/SourceHanSerif-VF.otf.ttc"
  name "Source Han Serif Variable OTC"
  homepage "https://github.com/adobe-fonts/source-han-serif"

  livecheck do
    url "https://github.com/adobe-fonts/source-han-serif/releases/latest"
    strategy :page_match
    regex(%r{tag/(\d+(?:\.\d+)*)}i)
  end

  font "SourceHanSerif-VF.otf.ttc"
end
