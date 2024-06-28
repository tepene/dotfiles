#! /bin/bash

## DevPod dotfile install
if [ "${DEVPOD}" == "true" ]; then
	echo "preparing environment"
	export XDG_CONFIG_HOME="${HOME}/.config"
	export PATH="${PATH}":"${HOME}/.local/bin"
	mkdir -p "${XDG_CONFIG_HOME}"
	echo "installing chezmoi"
	sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "${HOME}/.local/bin"
	chezmoi init https://github.com/tepene/dotfiles.git
	echo "applying configurations"
	chezmoi apply --force "${XDG_CONFIG_HOME}/nvim"
fi
