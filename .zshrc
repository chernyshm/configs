export ZSH=~/.oh-my-zsh

ZSH_THEME="kary-af-magic"
# ZSH_THEME="kphoen"

# CASE_SENSITIVE="true"

plugins=(git python virtualenvwrapper httpie docker jira aws)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:~/bin:~/scripts:/usr/local/share/npm/bin"

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
alias ppep8="pep8 --verbose --ignore=E501,E251,E402,E731 --exclude 'logs,nginx,run,templates,*/templates/*,*/migrations/*,*/static/*,*/urls.py,urls.py,.git,.coverage,*.pyc,_trial_temp,dropin.cache,venv_orders/,log/*.log.*,logs/*.log*,postback_log,wgext,.idea,.sass-cache,go,.ropeproject,settings_local.py,settings_local_test.py,settings_test_local.py,venv/,settings_staging.py,/media/,celerybeat-schedule,/static/' --statistics --show-source --count ."
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

alias wgpip='mv ~/.pip/wg.conf ~/.pip/pip.conf'
alias glpip='mv ~/.pip/pip.conf ~/.pip/wg.conf'

alias weather='curl wttr.in/'
alias dbshell='mysql --user=wgnps --password=wgnps'
alias dbpsa='dbshell aggregators'
alias dbpss='dbshell shop'
alias dbpso='dbshell orders'
alias dbpsui='dbshell ui'
alias ggpatch='function _ggpatch(){ CURRENT_BRANCH=`git rev-parse --abbrev-ref HEAD`;  git diff > $CURRENT_BRANCH.patch; }; _ggpatch'
alias utpsa='$VIRTUAL_ENV/bin/trial fraud rates postback wgpp core tools bonus_cards rss video_ads igp brain_tree'
alias wg='cd ~/wg'
alias jc='jira "$(git rev-parse --abbrev-ref HEAD)"'
alias vi='vim'

gopath () { export GOPATH=$(pwd); }
export WGTOOLS_projects=~/wg/tools

export JIRA_URL='https://jira.wargaming.net'

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

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#


beginnvm () {
    export NVM_DIR="$HOME/.nvm"; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"; nvm use node
}


zle_highlight=(default:bold)

export AWS_PROFILE=charnysh
