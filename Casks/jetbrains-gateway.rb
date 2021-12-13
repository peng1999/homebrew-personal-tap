cask "jetbrains-gateway" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "213.5744.213"
  if Hardware::CPU.intel?
    sha256 ""
  else
    sha256 "e51a5a703a17dba44cf88fa220b2b7e6480a5ff2ee5da68452cd4cf132f9e905"
  end

  url "https://download-cdn.jetbrains.com/idea/gateway/JetBrainsGateway-#{version}#{arch}.dmg"
  name "JetBrains Gateway"
  desc "Remote Development"
  homepage "https://www.jetbrains.com/remote-development/gateway/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=GW&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["GW"].map do |release|
        "#{release["version"]}"
      end
    end
  end

  auto_updates true


  app "JetBrains Gateway.app"
end
