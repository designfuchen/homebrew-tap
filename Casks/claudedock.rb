cask "claudedock" do
  version "0.2.1"
  sha256 "94c01d41ae0ca98b2739a4c6a9119a41cca12e3962cadaddc348abefc3384c2b"

  url "https://github.com/designfuchen/ClaudeDock/releases/download/v#{version}/ClaudeDock-#{version}-universal.dmg"
  name "ClaudeDock"
  desc "Run several Claude Desktop accounts side by side"
  homepage "https://github.com/designfuchen/ClaudeDock"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "ClaudeDock.app"
  binary "#{appdir}/ClaudeDock.app/Contents/MacOS/claudedock"

  uninstall quit: "io.claudedock.app"

  zap trash: "~/.claudedock"
end
