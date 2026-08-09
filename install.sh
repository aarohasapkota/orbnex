#!/usr/bin/env bash
# orbnex installer — curl -fsSL https://raw.githubusercontent.com/aarohasapkota/orbnex/main/install.sh | bash
set -euo pipefail

REPO="https://github.com/aarohasapkota/orbnex.git"
DIR="$HOME/.orbnex"

CYAN=$'\033[1;36m'; DIM=$'\033[2m'; RESET=$'\033[0m'
say() { echo "${CYAN}◉ ORBNEX${RESET} ${DIM}·${RESET} $*"; }

# tmux
if ! command -v tmux >/dev/null 2>&1; then
  if command -v brew >/dev/null 2>&1; then
    say "installing tmux"
    brew install tmux
  else
    echo "orbnex: tmux not found and no Homebrew to install it. Install tmux first." >&2
    exit 1
  fi
fi

# clone or update
if [ -d "$DIR/.git" ]; then
  say "updating $DIR"
  git -C "$DIR" pull --ff-only
else
  say "cloning into $DIR"
  git clone --depth 1 "$REPO" "$DIR"
fi

# link into place
mkdir -p "$HOME/.local/bin" "$HOME/.config/orbnex"
chmod +x "$DIR/orbnex"
ln -sfn "$DIR/orbnex" "$HOME/.local/bin/orbnex"
ln -sfn "$DIR/orbnex.conf" "$HOME/.config/orbnex/orbnex.conf"

# make sure ~/.local/bin is on PATH
case ":$PATH:" in
  *":$HOME/.local/bin:"*) ;;
  *)
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.zshrc"
    say "added ~/.local/bin to PATH in ~/.zshrc (restart your shell)"
    ;;
esac

say "installed — run: orbnex"
