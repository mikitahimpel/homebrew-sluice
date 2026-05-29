cask "sluice" do
  version "0.1.7"
  sha256 "7876be0b710a784b4a863f6dd2addb61ba1955c627dcd5b8258ff30937a0e336"

  url "https://github.com/mikitahimpel/sluice/releases/download/v#{version}/Sluice-#{version}.zip"
  name "Sluice"
  desc "URL router that opens links from different source apps in different browsers"
  homepage "https://github.com/mikitahimpel/sluice"

  depends_on macos: ">= :sonoma"

  app "Sluice.app"

  zap trash: [
    "~/Library/Application Support/Sluice",
    "~/Library/Preferences/com.mikitahimpel.sluice.plist",
    "~/Library/Caches/com.mikitahimpel.sluice",
    "~/Library/Saved Application State/com.mikitahimpel.sluice.savedState",
  ]
end
