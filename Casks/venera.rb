cask "venera" do
  version "1.4.5"
  sha256 "7879880034972e4bb34e1d794525e62602fb13c0e7f5970b2a31488efa18f134"

  url "https://github.com/venera-app/venera/releases/download/v#{version}/venera-#{version}+145.dmg"
  name "Venera"
  desc "Comic app"
  homepage "https://github.com/venera-app/venera"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Venera.app"

  zap trash: [
    "~/Library/Application Scripts/com.github.wgh136.venera",
    "~/Library/Containers/com.github.wgh136.venera",
  ]
end
