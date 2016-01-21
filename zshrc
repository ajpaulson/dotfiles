source ~/src/dotfiles/antigen/antigen.zsh
source ~/src/dotfiles/.zshrc-extra
cdpath=(. ~ ~/src)
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
antigen bundle safe-paste
antigen bundle mafredri/zsh-async
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle marzocchi/zsh-notify

# Theme
antigen theme /home/apa/src/dotfiles --loc=alex --no-local-clone

antigen apply

# Set the editor
export EDITOR=nvim
# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
# Pro cd function
# (sudo gem install pro)
pd() {
  local projDir=$(pro search $1)
  cd ${projDir}
}
