#!/usr/bin/env bash

set -e  # Exit on error

# Check for Homebrew
if ! command -v brew >/dev/null 2>&1; then
  echo "❌ Homebrew is not installed. Please install it first." >&2
  exit 1
fi

# Check for chezmoi
if ! command -v chezmoi >/dev/null 2>&1; then
  echo "📦 Installing chezmoi via Homebrew..."
  brew install chezmoi
fi

# Check for ansible
if ! command -v ansible >/dev/null 2>&1; then
  echo "📦 Installing ansible via Homebrew..."
  brew install ansible
fi

# Get the script's directory
script_dir="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"

# Run chezmoi init using this script as the source
exec chezmoi init --apply "--source=$script_dir"
