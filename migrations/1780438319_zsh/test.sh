
# set -eEo pipefail

nu12-assert-file-exist /bin/zsh
nu12-assert-file-exist $HOME/.zshrc
nu12-assert-file-exist $HOME/.config/zsh/envs
nu12-assert-file-exist $HOME/.config/zsh/aliases
nu12-assert-file-exist $HOME/.zsh.pre-oh-my-zsh
