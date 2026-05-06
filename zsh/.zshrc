# source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

export ZSH="$HOME/.oh-my-zsh"

export EDITOR=gnome-text-editor
export TERMINAL=ghostty

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  # zsh-autocomplete
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

eval "$(starship init zsh)"

# eval "$(zoxide init zsh)"


export PATH=$PATH:/home/irba/.spicetify
fastfetch


source /home/irba/.zshrc-alias
