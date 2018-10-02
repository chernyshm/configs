POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status aws time)

export LC_ALL=en_US.UTF-8
export CONFIG_DIR=$HOME/tools/configs

source $CONFIG_DIR/exports.sh
source $CONFIG_DIR/aliases.sh
source /usr/local/share/antigen/antigen.zsh


antigen init $CONFIG_DIR/.antigenrc

complete -C '/usr/local/bin/aws_completer' aws



# export ZSH=~/.oh-my-zsh

# ZSH_THEME="kary-af-magic"



# plugins=(git python virtualenvwrapper httpie docker jira aws)


# # User configuration

# source $ZSH/oh-my-zsh.sh

# # Preferred editor for local and remote sessions
#  if [[ -n $SSH_CONNECTION ]]; then
#    export EDITOR='vim'

#    export EDITOR='mvim'
#  fi

#  export SSH_KEY_PATH="~/.ssh/dsa_id"

# zstyle ':completion:*' file-sort date
