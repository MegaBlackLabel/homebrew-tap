cask "ligrol" do
  version "0.3.0"
  sha256 arm:   "2a383a5523f7afb726947a5d32d2c5471324efd3248e64602f179c52e62f9f49",
         intel: "9b85d918beeb7921852fd4a3c52aabc813d59c69fce59560ce666db129abe38b"

  arch arm: "aarch64", intel: "x86_64"

  url "https://github.com/MegaBlackLabel/ligrol-app/releases/download/v#{version}/ligrol-#{version}-#{arch}-macos.dmg",
      verified: "github.com/MegaBlackLabel/ligrol-app/"

  name "Ligrol"
  desc "Desktop bookshelf and reader for purchased doujinshi"
  homepage "https://ligrol.app/"

  livecheck do
    url "https://github.com/MegaBlackLabel/ligrol-app/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Ligrol.app"

  uninstall quit: "com.megablacklabel.ligrol"

  zap trash: [
    "~/Library/Application Support/ligrol",
    "~/Library/Caches/com.megablacklabel.ligrol",
    "~/Library/Logs/ligrol",
    "~/Library/Preferences/com.megablacklabel.ligrol.plist",
    "~/Library/Saved Application State/com.megablacklabel.ligrol.savedState",
  ]
end
