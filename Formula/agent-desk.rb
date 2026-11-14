# Homebrew formula for the agent-desk command. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS; do not edit the copy in
# the tap by hand.
class AgentDesk < Formula
  desc "Local GUI for the coding agents agent-manager runs"
  homepage "https://agent-desk.app"
  version "0.1.3"
  license "Apache-2.0"

  depends_on "agent-manager"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.3/agent-desk_0.1.3_darwin_arm64.tar.gz"
      sha256 "80b3eac8859c341eb483b6d22a869c75ff6ca8d6107dded1a59206c6707ea7c2"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.3/agent-desk_0.1.3_darwin_amd64.tar.gz"
      sha256 "9e78d19aff3df12dc36d72d15629ac59fe81ee1a0fc9ce1467a202cf285b8cc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.3/agent-desk_0.1.3_linux_arm64.tar.gz"
      sha256 "cd3054612bd6d83321e3a688971e68d7e3d790533748e507d354e205929bcbae"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.3/agent-desk_0.1.3_linux_amd64.tar.gz"
      sha256 "a60752ec7d0c0e547e3cfa3bcd358f1ce39429270e520cd3aaef56773356b8f8"
    end
  end

  def install
    bin.install "agent-desk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-desk --version")
  end
end
