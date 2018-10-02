alias curl="noglob curl"
alias migrate="./manage.py migrate"
alias pycdelete='find . -name "*.pyc" -exec rm -rf {} \;'
alias ag='command ag'
alias gb='command gb'
alias fhere="find . -name "
alias weather='curl wttr.in/'
alias jc='jira "$(git rev-parse --abbrev-ref HEAD)"'


beginnvm () {
    export NVM_DIR="$HOME/.nvm"; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"; nvm use node
}

gopath () { 
    export GOPATH=$(pwd); 
}

dockerhost() {
    ifconfig | grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" | grep -v 127.0.0.1 | awk '{ print $2 }' | cut -f2 -d: | head -n1
}
