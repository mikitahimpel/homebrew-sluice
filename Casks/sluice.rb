cask "sluice" do
  version "0.1.1"
  sha256 "dcb8ee4e742deeed58b98c04e2570477c54e038af091a437873ddbe095a27679"

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
