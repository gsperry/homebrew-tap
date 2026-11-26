# Homebrew formula for the agent-desk command. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS; do not edit the copy in
# the tap by hand.
class AgentDesk < Formula
  desc "Local GUI for the coding agents agent-manager runs"
  homepage "https://agent-desk.app"
  version "0.1.11"
  license "Apache-2.0"

  depends_on "agent-manager"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.11/agent-desk_0.1.11_darwin_arm64.tar.gz"
      sha256 "c4f870269d9c3a5776ad2b82e5de4e5db383e495a1b3ad0e6646a20b434f516d"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.11/agent-desk_0.1.11_darwin_amd64.tar.gz"
      sha256 "27dd9028b11a1b32dc8f5c7ecb0170e81cd529065b2daadd5ebaadd359a399b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.11/agent-desk_0.1.11_linux_arm64.tar.gz"
      sha256 "c3d257ebca6e9f92ea1fe9e831539c972ad3d145563dbdca46980dae33801f4a"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.11/agent-desk_0.1.11_linux_amd64.tar.gz"
      sha256 "a274866926deb9789105db5f316d80eef962dc0d8ebbbc3de8b05962079c4cc3"
    end
  end

  def install
    bin.install "agent-desk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-desk --version")
  end
end
