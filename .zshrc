export ZSH=~/.oh-my-zsh

ZSH_THEME="kary-af-magic"
# ZSH_THEME="kphoen"

# CASE_SENSITIVE="true"

plugins=(git python virtualenvwrapper httpie docker jira aws terraform)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:~/bin:~/scripts:~/Library/Python/2.7/bin"

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 
   export EDITOR='mvim'
 fi

 export SSH_KEY_PATH="~/.ssh/dsa_id"

zstyle ':completion:*' file-sort date

alias Env="source venv/bin/activate"
alias curl="noglob curl"
alias migrate="./manage.py migrate"
alias pycdelete='find . -name "*.pyc" -exec rm -rf {} \;'
alias tests="./manage.py test --settings=settings_test"
export DJANGO_SETTINGS_MODULE=settings_local
export VIRTUALENV=$VIRTUAL_ENV
alias ag='command ag'
alias gb='command gb'
alias pythonpath='export PYTHONPATH=.'
alias fhere="find . -name "


export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:/home/m-chernysh/wgps/psa/go/bin:/Users/chernyshm/projects/wg/psa/go/bin:/Users/chernyshm/projects/gocode/bin:/usr/local/mysql/bin/:$GOPATH/bin

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
source /usr/local/bin/virtualenvwrapper.sh

alias glpip='mv ~/.pip/pip.conf ~/.pip/wg.conf'

alias weather='curl wttr.in/'
alias ggpatch='function _ggpatch(){ CURRENT_BRANCH=`git rev-parse --abbrev-ref HEAD`;  git diff > $CURRENT_BRANCH.patch; }; _ggpatch'
alias jc='jira "$(git rev-parse --abbrev-ref HEAD)"'
alias vi='vim'

gopath () { export GOPATH=$(pwd); }

export KAFKA_HOME=/usr/local/Cellar/kafka/0.10.2.0
export KAFKA=$KAFKA_HOME/bin
export KAFKA_CONFIG=$KAFKA_HOME/config
export PATH=$PATH:$KAFKA

export RABBITMQ_CONF_ENV_FILE=$HOME/.rabbitmq/rabbitmq.config
export MIX_ENV=local
export DOCKERHOST=$(ifconfig | grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" | grep -v 127.0.0.1 | awk '{ print $2 }' | cut -f2 -d: | head -n1)

export VISUAL=vim
export EDITOR="$VISUAL"
export PATH="/usr/local/opt/openssl/bin:$PATH"


beginnvm () {
    export NVM_DIR="$HOME/.nvm"; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"; nvm use node
}


# zle_highlight=(default:bold)

export AWS_PROFILE=charnysh
export AWS_EB_PROFILE=charnysh
