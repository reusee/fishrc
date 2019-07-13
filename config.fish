set -x TERM xterm-256color
set -x fish_greeting ''

export LANG=zh_CN.UTF-8

set PATH $PATH /home/reus/gotip/bin 
alias go 'env ALL_PROXY=http://127.0.0.1:9102 HTTP_PROXY=http://127.0.0.1:9102 SOCKS_PROXY=socks5://10.0.0.2 go'
set PATH $PATH (go env GOROOT)/misc/wasm

alias a 'axel -n 10 -a'

set PATH $PATH $HOME/bin

alias gits 'git status'
alias gitm 'git commit'
alias gitp 'git push origin master'
alias gitps 'git push site master'

alias ll 'ls -ltr'
alias l 'ls -lt'

alias bd "aria2c -c -k 2M -x 16 -s 16 --user-agent 'netdisk;5.3.1.3;PC;PC-Windows;5.1.2600;WindowsBaiduYunGuanJia' --header 'Referer:http://pan.baidu.com/disk/home' -o"

alias rg 'rg -M 1024 --no-heading -L'

set -x ASPROOT /media/db/asproot

set -x PAGER less
set -x LESS "-iMSx4 -FX"

set -x PLAN9 /usr/lib/plan9
set PATH $PATH $PLAN9/bin

set -x ALSA_CARD Generic
#set -x ALSA_CARD M6

alias startx 'startx >> ~/.xlogs ^^ ~/.xlogs'

alias lsblk 'lsblk -o FSTYPE,LABEL,MOUNTPOINT,SIZE,SCHED,NAME'

alias dn dotnet
