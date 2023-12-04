cask "clashx-meta" do
  version "1.3.7"
  sha256 ""

  url "https://github.com/MetaCubeX/ClashX.Meta/releases/download/v#{version}/ClashX.Meta.macOS.12.0+.zip"
  name "ClashX.Meta"
  desc "A rule based proxy For Mac base on Clash"
  homepage "https://github.com/MetaCubeX/ClashX.Meta"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "ClashX Meta.app"
end
