export ZSH="$HOME/.oh-my-zsh"

export EDITOR=gnome-text-editor
export TERMINAL=ghostty

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  # colorize
)

source $ZSH/oh-my-zsh.sh

# fz
source <(fzf --zsh)
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Oh My Posh (prompt only)
# eval "$(oh-my-posh init zsh --config ~/.mytheme.omp.json)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# Yazi
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  command yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [[ -d "$cwd" && "$cwd" != "$PWD" ]] && cd -- "$cwd"
  rm -f -- "$tmp"
}


# Alias 
alias c='clear'
alias q='exit'

alias ls='eza --icons'
alias tree='eza --tree --icons'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias d='docker'
alias dc='docker compose'
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dcl='docker compose logs -f'
alias dps='docker ps'

alias cdarr='cd /mnt/hdd1/data'

alias wcc="warp-cli connect"
alias wcd="warp-cli disconnect"
alias wcs="warp-cli status"

alias nano="fresh"

alias copy="wl-copy"

alias git-push-dotfiles='git add . && git commit -m "initial commit" && git push -u origin main'

alias zshrc='${=EDITOR} ${ZDOTDIR:-$HOME}/.zshrc'


eval "$(starship init zsh)"

# eval "$(zoxide init zsh)"


export PATH=$PATH:/home/irba/.spicetify
