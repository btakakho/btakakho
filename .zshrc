# Load my custom aliases
source "${HOME}/.aliases"

# Load Antigen
source "${HOME}/antigen.zsh"

# Load Antigen configurations
antigen init ~/.antigenrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

