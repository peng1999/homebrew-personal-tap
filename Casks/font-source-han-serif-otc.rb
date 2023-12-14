cask "font-source-han-serif-otc" do
  version "2.000R"
  sha256 "443832c1a6fb8304fe6013bb175289bca3afd04ff7fbb662fe9425f940ec19c3"

  url "https://github.com/adobe-fonts/source-han-serif/releases/download/#{version}/SourceHanSerif.ttc.zip"
  name "Source Han Sans OTC"
  homepage "https://github.com/adobe-fonts/source-han-serif"

  font "SourceHanSerif.ttc"
end
