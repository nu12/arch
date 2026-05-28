#!/bin/bash
# set -eEo pipefail

export NU12_ARCH_BINARIES_PATH="$HOME/.local/bin"
export NU12_ARCH_STATE="$HOME/.local/state"

mkdir -p $NU12_ARCH_BINARIES_PATH $NU12_ARCH_STATE

export PATH="$PATH:$NU12_ARCH_BINARIES_PATH"
cp $NU12_ARCH_INSTALLATION_PATH/bin/* $NU12_ARCH_BINARIES_PATH

nu12-pkg-add $(cat $NU12_ARCH_INSTALLATION_PATH/install/pacman.packages)
nu12-mise-add $(cat $NU12_ARCH_INSTALLATION_PATH/install/mise.packages)
nu12-migrate

echo "Installation completed."