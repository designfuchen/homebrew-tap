cask "claudedock" do
  version "0.2.0"
  sha256 "43d99260dc08ec23dbed5795cdba79ce95b07057832535bfd257bae596bbe82f"

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
