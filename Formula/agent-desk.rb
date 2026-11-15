# Homebrew formula for the agent-desk command. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS; do not edit the copy in
# the tap by hand.
class AgentDesk < Formula
  desc "Local GUI for the coding agents agent-manager runs"
  homepage "https://agent-desk.app"
  version "0.1.4"
  license "Apache-2.0"

  depends_on "agent-manager"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.4/agent-desk_0.1.4_darwin_arm64.tar.gz"
      sha256 "87a4bfcad4980fa4cc86e98e5e0375e843ab8f145edb42bf4130fdddc36f76ed"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.4/agent-desk_0.1.4_darwin_amd64.tar.gz"
      sha256 "9d76faa0d4e7d40118df7b889d91c180da7614ed2eb2e08cc2d216df8aa875d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.4/agent-desk_0.1.4_linux_arm64.tar.gz"
      sha256 "ce5d47330e620e7416bb8e59efb0175f7f1573b98f0fe01f00d5508f7b2193a5"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.4/agent-desk_0.1.4_linux_amd64.tar.gz"
      sha256 "3da221a4cc650e702af14bc7dce7a8f5a26f69b3040f62a0dea6e4439db48fa1"
    end
  end

  def install
    bin.install "agent-desk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-desk --version")
  end
end
