# homebrew-ctx

Homebrew tap for [ctx](https://github.com/saurabh0392/ctx), a local context layer for AI coding
agents. ctx shows what your agent's context costs (the Context Bill), trims noisy tool output only
after randomized checks on your own sessions clear a safety gate, and keeps a byte-for-byte way
back for every trim.

## Install

```bash
brew install saurabh0392/ctx/ctx
ctx setup
```

`ctx setup` wires Claude Code hooks and starts the local dashboard at http://127.0.0.1:8789.

## Upgrade

```bash
brew update && brew upgrade ctx
```

## What this installs

A single prebuilt `ctx` binary from the project's [GitHub releases](https://github.com/saurabh0392/ctx/releases),
checksum-pinned in the formula. macOS on Apple Silicon. On other platforms use
`cargo install ctx-agent`.

Everything ctx records stays on your machine: SQLite under `~/.ctx`, no account, no background
telemetry. MIT licensed. The full story of the project: [saurabhsharan.dev](https://saurabhsharan.dev).
