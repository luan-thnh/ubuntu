# Load Powerlevel10k instant prompt for faster shell startup, if available
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set the location of the Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Set the Zsh theme (currently using "awesomepanda")
# To switch to Powerlevel10k, uncomment the next line and comment the "awesomepanda" line
# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="awesomepanda"

# Enable useful plugins: git, zsh-z (directory jumping), syntax highlighting, and autosuggestions
plugins=(git zsh-z zsh-syntax-highlighting zsh-autosuggestions)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Bind a key (Alt+M) to accept autosuggestions
bindkey '^[OM' autosuggest-accept

# Create aliases for common commands
alias zshconfig="vi ~/.zshrc" # Open this file for editing
alias cls='clear'            # Clear the terminal screen

# Load the Powerlevel10k configuration if it exists
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Configure Node Version Manager (NVM) environment
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Load NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Load NVM bash completion

# Set the Java home directory and update the PATH
# export JAVA_HOME=$HOME/.jdks/jdk-23.0.1
# export PATH=$JAVA_HOME/bin:$PATH

# export M2_HOME=$HOME/.mavens/apache-maven-3.9.9
# export PATH=$M2_HOME/bin:$PATH
