# Dotfiles

Managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Install Stow

```bash
sudo pacman -S stow   # Arch
sudo dnf install stow # Fedora
sudo apt install stow # Ubuntu
```

## Usage

```bash
stow <package>    # install
stow -D <package> # uninstall
stow -n <package> # dry run
stow .            # install all
```

---

## Packages

| Package | Arch | Fedora | Ubuntu |
|---------|------|--------|--------|
| zsh | `sudo pacman -S zsh` | `sudo dnf install zsh` | `sudo apt install zsh` |
| git | `sudo pacman -S git` | `sudo dnf install git` | `sudo apt install git` |
| ghostty | `sudo pacman -S ghostty` | `sudo dnf install ghostty` | `sudo apt install ghostty` |
| niri | `sudo pacman -S niri` | `sudo dnf install niri` | `sudo apt install niri` |
| starship | `curl -sS https://starship.rs/install.sh \| sh` | ← same | ← same |

After install, set zsh as default shell:
```bash
chsh -s $(which zsh)
```

Then stow everything:
```bash
stow zsh starship ghostty git niri
```

---

> Clone repo ini ke `~` lalu jalankan `stow .` untuk install semuanya sekaligus.
