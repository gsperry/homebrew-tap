# Homebrew formula for the agent-desk command. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS; do not edit the copy in
# the tap by hand.
class AgentDesk < Formula
  desc "Local GUI for the coding agents agent-manager runs"
  homepage "https://agent-desk.app"
  version "0.1.5"
  license "Apache-2.0"

  depends_on "agent-manager"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.5/agent-desk_0.1.5_darwin_arm64.tar.gz"
      sha256 "4e765376688be735d4220ca04cc76c54836d7e41e513f591cd168af7c5551167"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.5/agent-desk_0.1.5_darwin_amd64.tar.gz"
      sha256 "25a2f4083d0fe5c239b64a9af9e2836af3a47a8825344a34c8975912cc72c17c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.5/agent-desk_0.1.5_linux_arm64.tar.gz"
      sha256 "939f754196ae921a363088fbdacc29ceac3b530e85598731cc0ab4960794b6bc"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.5/agent-desk_0.1.5_linux_amd64.tar.gz"
      sha256 "65747bb463de10a11df201a44cd3eddf7adc774d8dd54ec6420f5013a344cb7d"
    end
  end

  def install
    bin.install "agent-desk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-desk --version")
  end
end
