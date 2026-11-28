# Homebrew formula for the agent-desk command. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS; do not edit the copy in
# the tap by hand.
class AgentDesk < Formula
  desc "Local GUI for the coding agents agent-manager runs"
  homepage "https://agent-desk.app"
  version "0.1.13"
  license "Apache-2.0"

  depends_on "agent-manager"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.13/agent-desk_0.1.13_darwin_arm64.tar.gz"
      sha256 "077472c8c54efb1f86a7234a20d170ab189d5f60c2d458457e46526de6240aa3"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.13/agent-desk_0.1.13_darwin_amd64.tar.gz"
      sha256 "cbf277682ca9a558f62bbc03f76ba2a2b747868f4024ae6f98c16c762ef9f93a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.13/agent-desk_0.1.13_linux_arm64.tar.gz"
      sha256 "4aafe718d7632a9b0cf8b5c8b88a3766f97fd821a8d2247410d4a13c16ae5a60"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.13/agent-desk_0.1.13_linux_amd64.tar.gz"
      sha256 "4f81b190470aba4819820b7379f9497279fdd6639746b1ac336ea27c94118c60"
    end
  end

  def install
    bin.install "agent-desk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-desk --version")
  end
end
