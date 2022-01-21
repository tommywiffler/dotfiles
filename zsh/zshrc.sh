# Vars
	HISTFILE=~/.zsh_history
	SAVEHIST=10000


# Custom cd
source ~/dotfiles/zsh/plugins/fixls.zsh

chpwd() ls


autoload -Uz compinit && compinit

# Define PATH
export PATH=~/.pyenv/shims:$PATH
export PATH=$PATH:~/go/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# zsh tab completion
zstyle ':completion:*' menu select
# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

#Alias "clear" to work as "clc"
alias clc="clear"
alias python="python3"
alias pip="pip3"

#Source Files
# source ~/dotfiles/zsh/plugins/zsh-vi-mode.plugin.zsh
source ~/dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/env-vars.env
source ~/dotfiles/zsh/prompt.sh
source ~/dotfiles/zsh/keybindings.sh
zvm_after_init_commands+=('source ~/dotfiles/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh')
# zvm_after_init_commands+=('source /usr/share/fzf/key-bindings.zsh')
# zvm_after_init_commands+=('source /usr/share/fzf/completion.zsh')
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
