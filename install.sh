#!/bin/bash
# Installer for gpuCI tools
set -e

URL="https://raw.githubusercontent.com/rapidsai/gpuci-tools/main/tools"

function logging {
  TS=`date`
  echo "[$TS] $@"
}

function install_tool {
  logging "Installing $1 script..."
  SAVE_LOC="$HOME/.gpuci/${1}"
  curl -s --retry 5 --retry-delay 5 "${URL}/${1}" -o "$SAVE_LOC" > /dev/null
  chmod +x "$SAVE_LOC"
  logging "Installed $1 script..."
}

logging "Creating ~/.gpuci dir..."
mkdir -p "$HOME/.gpuci"

install_tool gpuci_retry
install_tool gpuci_logger
install_tool gpuci_conda_retry
install_tool gpuci_mamba_retry

logging "Adding ~/.gpuci to PATH in ~/.bashrc ..."
touch "$HOME/.bashrc"
echo "export PATH=\"\$HOME/.gpuci:\$PATH\"" >> "$HOME/.bashrc"

logging "Tools installed..."
logging "Use 'source ~/.bashrc' to use tools in current shell..."
