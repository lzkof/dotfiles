FOLDERS := $(shell find . -maxdepth 1 -type d ! -path "./.git" ! -name "." ! -name "old" ! -name "nvim_server" | sed 's|^\./||')
.PHONY = default clean $(addsuffix _config, $(FOLDERS)) help
.SECONDARY: $(addsuffix _config_prepend, $(FOLDERS))

# General Targets
TARGET_DIR = ${XDG_CONFIG_HOME}
SERVER_FOLDERS := nvim_server tmux zsh

default: pc_config ## Default target pc_config.

pc_config: $(addsuffix _config, $(FOLDERS)) ## Deploy all pc configs to XDG_CONFIG_HOME.
server_config: $(addsuffix _config, $(SERVER_FOLDERS)) ## Deploy all server configs to XDG_CONFIG_HOME (untested!!).

%_config: % %_config_prepend ## Install single config e.g. make zsh_config.
	mkdir -p ${TARGET_DIR}/$<
	stow --target=${TARGET_DIR}/$< $<

clean: $(addsuffix _clean, $(FOLDERS))

%_clean: % %_clean_prepend ## Uninstall single config e.g. make zsh_clean.
	stow --delete --target=${TARGET_DIR}/$< $<

### Other system related things
install_pkgs: pkglist.txt ## Install packages defined in pkglist.txt.
	pacman -S --needed - < pkglist.txt

### Utilities
help: ## Show help message.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

### Prepend Actions for certain applications
%_config_prepend:
	@

%_clean_prepend:
	@

zsh_config_prepend:
	ln -fs `pwd`/zsh/.zshrc ${HOME}/.zshrc

zsh_clean_prepend:
	rm -f ${HOME}/.zshrc
 
git_config_prepend:
	ln -fs `hostname`.inc git/gitconfig.inc
