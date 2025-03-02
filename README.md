# Dotfiles

Clone the dotfiles repository and use [GNU
Stow](https://www.gnu.org/software/stow/) to link them.

```bash
$ make help

Usage:
  make
  default          Default target pc_config.
  pc_config        Deploy all pc configs to XDG_CONFIG_HOME.
  server_config    Deploy all server configs to XDG_CONFIG_HOME (untested!!).
  install_pkgs     Install packages defined in pkglist.txt.
  help             Show help message.
```

## Package List Commands

```bash
# create package list
pacman -Qqen > pkglist.txt
pacman -Qqem > pkglist_aur.txt

# install package list
pacman -S --needed - < pkglist.txt
yay -S --needed - < pkglist_aur.txt
```
