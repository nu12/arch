echo "Install and configure zsh"

nu12-pkg-add zsh
sudo chsh -s $(which zsh) $USER
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended 
mkdir -p $HOME/.config/zsh/
cp -r $NU12_ARCH_INSTALLATION_PATH/config/zsh/* $HOME/.config/zsh/

echo "source $HOME/.config/zsh/rc" > $HOME/.zshrc