# Homebrew formula for the agent-desk command. Rendered by
# scripts/homebrew.sh from a release's SHA256SUMS; do not edit the copy in
# the tap by hand.
class AgentDesk < Formula
  desc "Local GUI for the coding agents agent-manager runs"
  homepage "https://agent-desk.app"
  version "0.1.0"
  license "Apache-2.0"

  depends_on "agent-manager"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.0/agent-desk_0.1.0_darwin_arm64.tar.gz"
      sha256 "365f0d536e567b81acb4d5468aba5a219de80082759837f9f12ebf83bf6cb94b"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.0/agent-desk_0.1.0_darwin_amd64.tar.gz"
      sha256 "f5bc878b744400491fd114bd4b704f8461c78404f4f0d36c8d8edcac779c3570"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.0/agent-desk_0.1.0_linux_arm64.tar.gz"
      sha256 "35715d53c262a9ebaea6244701f1d2a830b94252688c29cf46c49c3461aeb84e"
    end
    on_intel do
      url "https://github.com/gsperry/agent-desk/releases/download/v0.1.0/agent-desk_0.1.0_linux_amd64.tar.gz"
      sha256 "a922db7b902a3f7422efcdb65ead7f5128e2a6299f04e71e7c87fa7906417f3a"
    end
  end

  def install
    bin.install "agent-desk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-desk --version")
  end
end
