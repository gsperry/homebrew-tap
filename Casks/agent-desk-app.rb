# Homebrew cask for the Agent Desk macOS app. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS. The app must be signed
# and notarized before this goes into the tap.
cask "agent-desk-app" do
  version "0.1.6"
  sha256 "c6d75a9b6b68607ebdc2180a1864eab4540563fd16a3959a29972e4f98468f03"

  url "https://github.com/gsperry/agent-desk/releases/download/v#{version}/Agent-Desk_#{version}_macos.zip"
  name "Agent Desk"
  desc "Desktop app for the coding agents agent-manager runs"
  homepage "https://agent-desk.app/"

  depends_on formula: "agent-manager"
  depends_on formula: "tmux"
  depends_on macos: :ventura

  app "Agent Desk.app"

  zap trash: [
    "~/Library/Application Support/agent-desk",
    "~/Library/Caches/app.agent-desk.desktop",
    "~/Library/LaunchAgents/Agent Desk.plist",
    "~/Library/Logs/Agent Desk",
    "~/Library/WebKit/app.agent-desk.desktop",
  ]
end
