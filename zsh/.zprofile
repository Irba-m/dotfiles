# ~/.zprofile

path_prepend() {
  [[ -d "$1" ]] && [[ ":$PATH:" != *":$1:"* ]] && PATH="$1:$PATH"
}

path_prepend "$HOME/bin"
path_prepend "$HOME/.local/bin"
path_prepend "/opt/nvim-linux-x86_64/bin"

# Rust
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

# export EDITOR=nvim

