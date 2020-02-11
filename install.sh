#!/bin/bash
# Installer for gpuCI tools

URL="https://raw.githubusercontent.com/rapidsai/gpuci-tools/master/tools"

function logging {
  TS=`date`
  echo "[$TS] $@"
}

function install_tool {
  logging "Installing $1 script..."
  SAVE_LOC="$HOME/bin/${1}"
  curl -s "${URL}/${1}" -o $SAVE_LOC > /dev/null
  chmod +x $SAVE_LOC
  logging "Installed $1 script..."
}

logging "Creating ~/.gpuci dir..."
mkdir -p $HOME/.gpuci

install_tool gpuci_retry
install_tool gpuci_logger

logging "Adding ~/.gpuci to PATH in ~/.bashrc ..."
echo "export PATH=\"\$HOME/.gpuci:\$PATH\"" >> $HOME/.bashrc
source $HOME/.bashrc

logging "Tools installed..."
logging "Use 'source ~/.bashrc' to use tools in current shell..."
