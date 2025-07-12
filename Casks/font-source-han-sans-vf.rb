cask "font-source-han-sans-vf" do
  version "2.005"
  sha256 ""

  url "https://github.com/adobe-fonts/source-han-sans/raw/#{version}R/Variable/OTC/SourceHanSans-VF.otf.ttc"
  name "Source Han Sans Variable OTC"
  homepage "https://github.com/adobe-fonts/source-han-sans"

  livecheck do
    url "https://github.com/adobe-fonts/source-han-sans/releases/latest"
    strategy :page_match
    regex(%r{tag/(\d+(?:\.\d+)*)}i)
  end

  font "SourceHanSans-VF.otf.ttc"
end
