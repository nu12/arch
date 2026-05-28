#!/bin/bash

echo "Bootstraping the installation."
echo "Installing git"
sudo pacman -Syu --noconfirm --needed git

if [[ "$(whoami)" == "root" ]]; then
  echo "Cannot execute as root. Login as user."
  echo "Use command: su - <user>"
  exit 1
fi

export NU12_ARCH_REPO="${NU12_REPO:-nu12/arch}"
export NU12_ARCH_INSTALLATION_PATH="$HOME/.local/share/arch"

echo -e "\nCloning from: https://github.com/${NU12_ARCH_REPO}.git"
rm -rf $NU12_ARCH_INSTALLATION_PATH
git clone "https://github.com/${NU12_ARCH_REPO}.git" $NU12_ARCH_INSTALLATION_PATH >/dev/null


cd $NU12_ARCH_INSTALLATION_PATH
git fetch origin main  && git checkout main 
cd -

echo -e "\nInstallation starting..."
source $NU12_ARCH_INSTALLATION_PATH/install.sh