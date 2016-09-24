# NVM
export NVM_DIR=$HOME/.local/share/nvm
#export NVM_LAZY_LOAD=true
source $HOME/.config/zsh/plugins/zsh-nvm/zsh-nvm.plugin.zsh

# ZSH syntax highlighting
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Pure prompt
autoload -U promptinit && promptinit
prompt pure

