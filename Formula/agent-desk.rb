# Homebrew formula for the agent-desk command. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS; do not edit the copy in
# the tap by hand.
class AgentDesk < Formula
  desc "Local GUI for the coding agents agent-manager runs"
  homepage "https://agent-desk.app"
  version "0.1.10"
  license "Apache-2.0"

  depends_on "agent-manager"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.10/agent-desk_0.1.10_darwin_arm64.tar.gz"
      sha256 "d2b9172432012582345bbe98f2a9089ed0fb92bb7a22b7650f6654da10d48870"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.10/agent-desk_0.1.10_darwin_amd64.tar.gz"
      sha256 "9ba0c412e6fba00931c280a52c2a40dcaa5688c62e57765d2ac89eab4a1aaa0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.10/agent-desk_0.1.10_linux_arm64.tar.gz"
      sha256 "834133b40fb26b857c729890f5aacc061feee0411f60198d8bca114ea1e11215"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.10/agent-desk_0.1.10_linux_amd64.tar.gz"
      sha256 "a9ef1ca597ea0897c62a90a6705065687c8e9480a0e59bd8b3233094660dc6b6"
    end
  end

  def install
    bin.install "agent-desk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-desk --version")
  end
end
