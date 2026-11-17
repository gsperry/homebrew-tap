# Homebrew formula for the agent-desk command. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS; do not edit the copy in
# the tap by hand.
class AgentDesk < Formula
  desc "Local GUI for the coding agents agent-manager runs"
  homepage "https://agent-desk.app"
  version "0.1.6"
  license "Apache-2.0"

  depends_on "agent-manager"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.6/agent-desk_0.1.6_darwin_arm64.tar.gz"
      sha256 "d5c4b77402aee4a5bcd666bcb4349cf7d1435a872943c0e72cfe58866f850fcc"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.6/agent-desk_0.1.6_darwin_amd64.tar.gz"
      sha256 "e96c9829f031bc0669e8213730b8bc8e445e67c6337a8d7bbd6c797bfeb9314d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.6/agent-desk_0.1.6_linux_arm64.tar.gz"
      sha256 "cee04a41316e9b1608de440ebb17b939336ec5d10a1964943679ea1b9838ab1e"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.6/agent-desk_0.1.6_linux_amd64.tar.gz"
      sha256 "06f769d7f5f0aeb7ead2ffb3b49076a4503fd3bab85201e7d42442870a605756"
    end
  end

  def install
    bin.install "agent-desk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-desk --version")
  end
end
