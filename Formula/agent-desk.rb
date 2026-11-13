# Homebrew formula for the agent-desk command. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS; do not edit the copy in
# the tap by hand.
class AgentDesk < Formula
  desc "Local GUI for the coding agents agent-manager runs"
  homepage "https://agent-desk.app"
  version "0.1.1"
  license "Apache-2.0"

  depends_on "agent-manager"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.1/agent-desk_0.1.1_darwin_arm64.tar.gz"
      sha256 "f42530da68fe38fb9ef904e59b9bfe917dd343bb5a3a4dcd7f4e6ea5e8d9dfd6"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.1/agent-desk_0.1.1_darwin_amd64.tar.gz"
      sha256 "9af52f1659396bdf7d464792b3ee0859e36dd6b697061eb5cd9ef6996272a24b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.1/agent-desk_0.1.1_linux_arm64.tar.gz"
      sha256 "2d874db56d97cc38011439d8f2c3899db3c52d8b93252984cc5c144bb1839bb7"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.1/agent-desk_0.1.1_linux_amd64.tar.gz"
      sha256 "a21c8ba50874c3d6b90ab2b6af8f552cffee597364713e9f141c4d55114d128d"
    end
  end

  def install
    bin.install "agent-desk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-desk --version")
  end
end
