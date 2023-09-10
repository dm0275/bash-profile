#!/usr/bin/env bash

#Git Commands
alias gs="git status"
alias gf="git fetch"
alias gp="git pull"
alias gd="git diff"
alias gl="git log"

# Kubernetes Alias
alias k='kubectl'
alias kterm='kubectl delete'
alias kexec='kubectl exec -it'
alias kdesc='kubectl describe'
alias kpod='kubectl get pods'
alias klogs='kubectl logs -f --since=5m'
alias kcontext='kubectl config use-context'

# Java
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'
alias java12='export JAVA_HOME=$JAVA_12_HOME'
alias java17='export JAVA_HOME=$JAVA_17_HOME'
alias java20='export JAVA_HOME=$JAVA_20_HOME'

# Gradle
alias g='./gradlew'

# Docker
alias drun="docker run -it --rm --entrypoint=bash"
alias removeUntaggedImages='docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'
alias stopAllContainers='docker stop $(docker ps -aq)'
alias removeAllContainers='docker rm $(docker ps -aq)'
alias stopDocker="test -z \"$(docker ps -q 2>/dev/null)\" && osascript -e 'quit app \"Docker\"'"
alias startDocker="open --background -a Docker"
alias restartDocker="stopDocker && startDocker"

# VS Code
alias vs="open -a 'Visual Studio Code'"

# Other
alias untar='tar -xvzf'
alias hgrep='history | grep'
alias sed='gsed'
