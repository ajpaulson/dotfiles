source ~/src/dotfiles/antigen/antigen.zsh
source ~/src/dotfiles/zshextra
cdpath=(. ~ ~/src)
# Load the oh-my-zsh library
antigen use oh-my-zsh

# Bundles from the default repo (oh-my-zsh)
antigen bundle git
antigen bundle git-extras
antigen bundle history-substring-search
antigen bundle zsh-users/zsh-completions src
antigen bundle command-not-found
antigen bundle extract
antigen bundle mafredri/zsh-async
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle bgnotify

# Make history-substring-search work cos it's all broken.
zmodload zsh/terminfo
# bindkey "$terminfo[kcuu1]" history-substring-search-up
# bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Theme
antigen theme ~/src/dotfiles --loc=alex --no-local-clone

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
man() {
	env \
		LESS_TERMCAP_md=$'\e[1;36m' \
		LESS_TERMCAP_me=$'\e[0m' \
		LESS_TERMCAP_se=$'\e[0m' \
		LESS_TERMCAP_so=$'\e[1;40;92m' \
		LESS_TERMCAP_ue=$'\e[0m' \
		LESS_TERMCAP_us=$'\e[1;32m' \
			man "$@"
}
