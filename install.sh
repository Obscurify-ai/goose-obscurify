#!/bin/sh
# Installs the Obscurify.ai custom provider for goose (macOS/Linux).
set -eu
dir="${XDG_CONFIG_HOME:-$HOME/.config}/goose/custom_providers"
mkdir -p "$dir"
curl -fsSL https://raw.githubusercontent.com/Obscurify-ai/goose-obscurify/main/obscurify.json -o "$dir/obscurify.json"
echo "Installed $dir/obscurify.json"
echo "Next: export OBSCURIFY_API_KEY=sk-obs1_...  then run: goose session --provider obscurify --model deepseek/deepseek-v4-flash"
