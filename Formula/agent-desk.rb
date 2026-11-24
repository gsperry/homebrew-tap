# Homebrew formula for the agent-desk command. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS; do not edit the copy in
# the tap by hand.
class AgentDesk < Formula
  desc "Local GUI for the coding agents agent-manager runs"
  homepage "https://agent-desk.app"
  version "0.1.9"
  license "Apache-2.0"

  depends_on "agent-manager"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.9/agent-desk_0.1.9_darwin_arm64.tar.gz"
      sha256 "53db7514663c89da78a1cb87bad666b1642119c7207b5796ec6094bdabf3a255"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.9/agent-desk_0.1.9_darwin_amd64.tar.gz"
      sha256 "2ddff4a288a9a58f95622635759c54f7e2f9dc5a65467564b5ecb0b03cdd26b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.9/agent-desk_0.1.9_linux_arm64.tar.gz"
      sha256 "cee336af32afd9eb1ea0faa0c6e8c6bcdf6751c28827697636700ff18393fcb3"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.9/agent-desk_0.1.9_linux_amd64.tar.gz"
      sha256 "a603b1459e0662677c08394d9d5dab1ebb508251c87db20d7af0da4ff78e166c"
    end
  end

  def install
    bin.install "agent-desk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-desk --version")
  end
end
