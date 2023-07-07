source $HOME/.zsh/zinit/zinit.zsh \
  || (git clone --depth 1 https://github.com/zdharma-continuum/zinit.git $HOME/.zsh/zinit && exec zsh)
zinit ice depth=1 atload="source $HOME/.p10k.zsh"
zinit light romkatv/powerlevel10k

zinit wait lucid light-mode depth=1 nocd for \
  atinit='zicompinit; zicdreplay' zdharma-continuum/fast-syntax-highlighting \
  atload='_zsh_autosuggest_start' zsh-users/zsh-autosuggestions

zinit wait lucid is-snippet for \
  https://github.com/ajeetdsouza/zoxide/blob/main/zoxide.plugin.zsh

setopt autocd \
  histignorealldups \
  histignorespace \
  sharehistory

export HISTSIZE=100000
export SAVEHIST=100000
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
export PATH=$PATH:$(go env GOPATH)/bin

export GPG_TTY=$(tty)
HISTFILE=$HOME/.zsh_history

source $HOME/.zshrc.alias
source $HOME/.zshrc.axon
# source <(kubectl completion zsh)
# command -v fzf >/dev/null 2>&1 && {
# 	source <(kubectl completion zsh | sed 's#${requestComp} 2>/dev/null#${requestComp} 2>/dev/null | head | fzf  --multi=0 #g')
# }

source /Users/tudoan/.docker/init-zsh.sh || true # Added by Docker Desktop
