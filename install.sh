#!/usr/bin/env bash
# Install checkpoint + keep-building into a bin dir on your PATH.
# Usage: ./install.sh [target-bin-dir]   (default: ~/.local/bin)
set -euo pipefail
BIN="${1:-$HOME/.local/bin}"
mkdir -p "$BIN"
install -m 0755 checkpoint keep-building "$BIN/"
echo "Installed checkpoint + keep-building to $BIN"
case ":$PATH:" in
  *":$BIN:"*) ;;
  *) echo "NOTE: $BIN is not on your PATH. Add it, e.g.:"; echo "  echo 'export PATH=\"$BIN:\$PATH\"' >> ~/.zshrc" ;;
esac
