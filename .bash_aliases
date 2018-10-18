## GIT 
alias gadd='git add'
alias gcommit='git commit -m'
alias gcheckout='git checkout'
alias gdiff='git diff'
alias glog='git log'
alias gpull='git pull'
alias gpush='git push'
alias greset='git reset --soft'
alias grm='git rm'
alias gstatus='git status'

## UTIL
alias current-basename='basename $(pwd)'

## DOCKER
alias containers-up='docker-compose up -d'
alias containers-down='docker-compose down'
# alias web-container='docker exec -it $(basename $(pwd))_web_1 su docker -s /bin/ash'
alias web-container='docker exec -it $(current-basename)_web_1 bash'
alias mage='docker exec $(current-basename)_web_1 magento'
alias php-info='docker exec $(current-basename)_web_1 php -i'
