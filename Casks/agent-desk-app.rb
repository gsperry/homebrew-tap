# Homebrew cask for the Agent Desk macOS app. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS. The app must be signed
# and notarized before this goes into the tap.
cask "agent-desk-app" do
  version "0.1.9"
  sha256 "ffc33e48d307a181153cbe9f803c6b44a3b9166b664470f9f041d6c3d4e5f499"

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
