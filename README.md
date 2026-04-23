Installing Stow

Arch
'sudo pacman -S stow'

Fedora
'sudo dnf install stow'

Ubuntu
'sudo apt install stow'


Usage
Stow/Install a Package: 'stow <package_name>'
Creates symlinks in the parent directory for files in the <package_name> folder

Unstow/Delete a Package: stow -D <package_name>
Removes the symlinks associated with the package.

Stow All: stow .
Stows all directories within the current folder.

Simulate (Dry Run): stow -n <package_name>
Shows what the command would do without actually creating links.
