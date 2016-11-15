# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="warm-af-magic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git django git-extras python virtualenv virtualenvwrapper jira httpie)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:~/bin:~/scripts"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh

alias Env="source venv/bin/activate"
alias curl="noglob curl"
alias migrate="./manage.py migrate"
alias pycdelete='find . -name "*.pyc" -exec rm -rf {} \;'
alias ppep8="pep8 --verbose --ignore=E501,E251,E402,E731 --exclude 'logs,nginx,run,templates,*/templates/*,*/migrations/*,*/static/*,*/urls.py,urls.py,.git,.coverage,*.pyc,_trial_temp,dropin.cache,venv_orders/,log/*.log.*,logs/*.log*,postback_log,wgext,.idea,.sass-cache,go,.ropeproject,settings_local.py,settings_local_test.py,settings_test_local.py,venv/,settings_staging.py,/media/,celerybeat-schedule,/static/' --statistics --show-source --count ."
alias tests="./manage.py test --settings=settings_test"
export DJANGO_SETTINGS_MODULE=settings_local
export uimodules="shop preorders utils financial_offers filters orders ordering exchange_rates transactions external_services permissions config events dbclassifiers user_profile action_applier aggregators ip_whitelist ui rss assets notifications countries games dashboard incident_tracker banners user_activity"
export VIRTUALENV=$VIRTUAL_ENV
alias ag='command ag'
alias gb='command gb'
alias pythonpath='export PYTHONPATH=.'
alias exclude='echo "$1" >> .git/info/exclude'

export PATH=$PATH:/usr/local/go/bin:/home/m-chernysh/wgps/psa/go/bin

# where to store our virtual envs
export WORKON_HOME=$HOME/.virtualenvs
# # where projects will reside
export PROJECT_HOME=$HOME/projects
# # where is the virtualenvwrapper.sh
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
alias wg='cd ~/projects/wg'
alias gopath="export GOPATH=$(pwd)"

# JIRA 
export JIRA_URL="https://jira.wargaming.net"
export JIRA_DEFAULT_ACTION="$(git rev-parse --abbrev-ref HEAD)"
