source ~/src/dotfiles/antigen/antigen.zsh
source ~/src/dotfiles/.zshrc-extra
# Load the oh-my-zsh library
antigen use oh-my-zsh

# Bundles from the default repo (oh-my-zsh)
antigen bundle git
antigen bundle git-extras
antigen bundle debian
antigen bundle history-substring-search
antigen bundle zsh-users/zsh-completions src
antigen bundle command-not-found
antigen bundle extract
antigen bundle mafredri/zsh-async

# Theme
antigen theme clean

antigen apply

# Pro cd function
# (sudo gem install pro)
pd() {
  local projDir=$(pro search $1)
  cd ${projDir}
}
