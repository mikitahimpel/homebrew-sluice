cask "sluice" do
  version "0.1.4"
  sha256 "1565814c76ac01cc8cd7acf10f71eb35c3b27be0180a5f71efb6bbbe2fccd35b"

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
