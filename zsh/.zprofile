# ~/.zprofile

# include .zshrc for interactive shell
if [ -f "$HOME/.zshrc" ]; then
    source "$HOME/.zshrc"
fi

# PATH tambahan untuk login
if [ -d "$HOME/bin" ]; then
    export PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# cargo environment (Rust)
if [ -f "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi

# export other global env variables if needed
# export EDITOR=nano

