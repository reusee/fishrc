set -x TERM xterm-256color
set -x fish_greeting ''

export LANG=en_US.UTF-8

set PATH /home/reus/gotip/bin  $PATH
#set PATH $PATH (go env GOROOT)/misc/wasm
alias wgo 'env GOOS=js GOARCH=wasm go'
set -x GOPRIVATE 'github.com/reusee/*'
set -x GOPATH $HOME
set -x GO111MODULE on

alias a 'axel -n 10 -a'

set PATH $PATH $HOME/bin

alias gits 'git status'
alias gitm 'git commit'
alias gitp 'git push origin master'
alias gitps 'git push site master'

alias ll 'ls -ltr'
alias l 'ls -lv'

alias rg 'rg -M 1024 --no-heading -L'

set -x PAGER less
set -x LESS "-iMSx4 -FX"

set -x PLAN9 /usr/lib/plan9
set PATH $PATH $PLAN9/bin

#set -x ALSA_CARD Generic
set -x ALSA_CARD M6

alias startx 'startx >> ~/.xlogs ^^ ~/.xlogs'

alias lsblk 'lsblk -o FSTYPE,LABEL,MOUNTPOINT,SIZE,SCHED,NAME,PARTUUID'

set -x CHROME_EXECUTABLE chromium

alias PROXY 'env ALL_PROXY=socks5://localhost:9103 HTTP_PROXY=http://localhost:9102 SOCKS_PROXY=socks5://localhost:9103 HTTPS_PROXY=socks5://localhost:9103'
alias PROXYJP 'env ALL_PROXY=socks5://10.0.0.8:1080 HTTP_PROXY=http://10.0.0.8:9102 SOCKS_PROXY=socks5://10.0.0.8:1080 HTTPS_PROXY=socks5://10.0.0.8:1080'
alias PROXYUS 'env ALL_PROXY=socks5://10.0.0.2:1080 HTTP_PROXY=http://10.0.0.2:9102 SOCKS_PROXY=socks5://10.0.0.2:1080 HTTPS_PROXY=socks5://10.0.0.2:1080'

alias r 'rsync -avvz --partial-dir=.rsync-partial'

set -x CGO_CFLAGS_ALLOW '.*'

cd /dev/shm

