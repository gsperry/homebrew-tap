# Homebrew formula for the agent-desk command. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS; do not edit the copy in
# the tap by hand.
class AgentDesk < Formula
  desc "Local GUI for the coding agents agent-manager runs"
  homepage "https://agent-desk.app"
  version "0.1.12"
  license "Apache-2.0"

  depends_on "agent-manager"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.12/agent-desk_0.1.12_darwin_arm64.tar.gz"
      sha256 "9805397cbfa10f569efa3930a817a81defdacdeb138c529bb7b3ac1c107538c5"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.12/agent-desk_0.1.12_darwin_amd64.tar.gz"
      sha256 "d21696e552c102f4d571824b21b7de49705ae8c498845457db024833332318ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.12/agent-desk_0.1.12_linux_arm64.tar.gz"
      sha256 "6e5ab99614d122c9fb0224dd816fc98e5e441bc221584ea253225ab5db506b98"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.12/agent-desk_0.1.12_linux_amd64.tar.gz"
      sha256 "cd229cac7eea42848848e85290107576c117c87bc89ff80ff78167cd1999de83"
    end
  end

  def install
    bin.install "agent-desk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-desk --version")
  end
end
