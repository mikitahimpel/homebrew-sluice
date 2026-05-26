cask "sluice" do
  version "0.1.0"
  sha256 "890fc76bd1594e0fc71b89dbe4c088b2478525e96704706055a0145b3f68e882"

  url "https://github.com/mikitahimpel/sluice/releases/download/v#{version}/Sluice-#{version}.zip"
  name "Sluice"
  desc "URL router that opens links from different source apps in different browsers"
  homepage "https://github.com/mikitahimpel/sluice"

  depends_on macos: ">= :ventura"

  app "Sluice.app"

  zap trash: [
    "~/Library/Application Support/Sluice",
    "~/Library/Preferences/com.mikitahimpel.sluice.plist",
    "~/Library/Caches/com.mikitahimpel.sluice",
    "~/Library/Saved Application State/com.mikitahimpel.sluice.savedState",
  ]
end
