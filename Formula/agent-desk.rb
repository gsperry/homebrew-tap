# Homebrew formula for the agent-desk command. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS; do not edit the copy in
# the tap by hand.
class AgentDesk < Formula
  desc "Local GUI for the coding agents agent-manager runs"
  homepage "https://agent-desk.app"
  version "0.1.8"
  license "Apache-2.0"

  depends_on "agent-manager"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.8/agent-desk_0.1.8_darwin_arm64.tar.gz"
      sha256 "730301c90d47909b35d5ee878fb0ea948c7bc59a1e43b118ac45ff005d138234"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.8/agent-desk_0.1.8_darwin_amd64.tar.gz"
      sha256 "7c581e862140d77af11a614c5e548f317a97dce4a4f6c6d63d9eea13b7bb14d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.8/agent-desk_0.1.8_linux_arm64.tar.gz"
      sha256 "37db1c5dd4d14d9e87e33c9879d696e731d8776271ae3207880d5631432212df"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.8/agent-desk_0.1.8_linux_amd64.tar.gz"
      sha256 "874745216f85cf0d569b4486762f648e657e519ba027e1be287ba753e800c31e"
    end
  end

  def install
    bin.install "agent-desk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-desk --version")
  end
end
