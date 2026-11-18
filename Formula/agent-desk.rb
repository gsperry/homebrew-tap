# Homebrew formula for the agent-desk command. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS; do not edit the copy in
# the tap by hand.
class AgentDesk < Formula
  desc "Local GUI for the coding agents agent-manager runs"
  homepage "https://agent-desk.app"
  version "0.1.7"
  license "Apache-2.0"

  depends_on "agent-manager"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.7/agent-desk_0.1.7_darwin_arm64.tar.gz"
      sha256 "5977b811b764ce084980fe8d98755c39d0bdcafa71f9e403320c532a23aeb28d"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.7/agent-desk_0.1.7_darwin_amd64.tar.gz"
      sha256 "7a8e36f856c7953835f0ca1f1d242f873c26485eb5e6990f8c287e65c74797e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.7/agent-desk_0.1.7_linux_arm64.tar.gz"
      sha256 "a9aeada07bf4ba51f2a44af88408cf875684e980ed1f67b417747ab5d3512f87"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.7/agent-desk_0.1.7_linux_amd64.tar.gz"
      sha256 "4dd1e4a7ebda3d892e6d6056821a37e61ebcbea7b4c1d2b1772856dda3aa0978"
    end
  end

  def install
    bin.install "agent-desk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-desk --version")
  end
end
