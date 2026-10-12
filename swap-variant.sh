#!/usr/bin/env bash
# Swap the active design variant of seankennedy.sh.
# Usage: ./swap-variant.sh terminal-light|quiet-paper|terminal-dark|gruvbox-dark
set -euo pipefail
cd "$(dirname "$0")"

variant="${1:?usage: $0 terminal-light|quiet-paper|terminal-dark}"
css="variants/$variant.css"

if [ ! -f "$css" ]; then
    echo "error: no such variant: $css" >&2
    exit 1
fi

cp "$css" static/site.css

# Dark variants need a dark syntax-highlight theme; light ones use ir-white.
case "$variant" in
    terminal-dark) theme="base16-ocean-dark" ;;
    gruvbox-dark)  theme="gruvbox-dark" ;;
    gruvbox-light) theme="gruvbox-light" ;;
    one-dark)      theme="one-dark" ;;
    ayu-dark)      theme="ayu-dark" ;;
    *)             theme="ir-white" ;;
esac
sed -i "s/^highlight_theme = .*/highlight_theme = \"$theme\"/" config.toml
grep -q "highlight_theme = \"$theme\"" config.toml || { echo "error: sed failed to set highlight_theme" >&2; exit 1; }

echo "switched to: $variant (highlight_theme=$theme)"
