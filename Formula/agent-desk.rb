# Homebrew formula for the agent-desk command. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS; do not edit the copy in
# the tap by hand.
class AgentDesk < Formula
  desc "Local GUI for the coding agents agent-manager runs"
  homepage "https://agent-desk.app"
  version "0.1.2"
  license "Apache-2.0"

  depends_on "agent-manager"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.2/agent-desk_0.1.2_darwin_arm64.tar.gz"
      sha256 "1164513ead2c4ec94c46a33b82262cb6a18cdb15140e5962d23525b81db37d1f"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.2/agent-desk_0.1.2_darwin_amd64.tar.gz"
      sha256 "59a20ed3e0b9b8b4f8122244be0c193db1d95a721bad1906e5b3987c95b9f822"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.2/agent-desk_0.1.2_linux_arm64.tar.gz"
      sha256 "1a1712e3bbcf7847f6aa870ed6d4e0266b839cb67302c05b8577e60082b4a929"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.2/agent-desk_0.1.2_linux_amd64.tar.gz"
      sha256 "01138fbb204c739ecbeffec1ad1e71a2f8bcfbb49d3ebeb984e688e6b63321ce"
    end
  end

  def install
    bin.install "agent-desk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-desk --version")
  end
end
