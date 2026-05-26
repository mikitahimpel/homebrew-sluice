cask "sluice" do
  version "0.1.2"
  sha256 "bb94642805ff1d7b3da349094e6dc4573c4fd0cde0ed1e199b27f4654feb7822"

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
