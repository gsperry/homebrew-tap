# gsperry/tap

Homebrew formulas for [Agent Desk](https://agent-desk.app), a local GUI for the coding agents [agent-manager](https://agent-manager.dev) runs.

```sh
brew install gsperry/tap/agent-desk               # the command; opens in your browser
brew install --cask gsperry/tap/agent-desk-app    # the macOS app
```

Both install with `agent-manager` and `tmux`. The app is signed and notarized, for Apple silicon and Intel, macOS 13 or later.

The formulas are generated from each release's checksums by `scripts/homebrew.sh` in [gsperry/agent-desk](https://github.com/gsperry/agent-desk); see its [docs/releasing.md](https://github.com/gsperry/agent-desk/blob/main/docs/releasing.md).
