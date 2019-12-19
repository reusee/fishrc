set -x TERM xterm-256color
set -x fish_greeting ''

export LANG=zh_CN.UTF-8

set PATH $PATH /home/reus/gotip/bin 
#set PATH $PATH (go env GOROOT)/misc/wasm
alias wgo 'env GOOS=js GOARCH=wasm go'
set -x GOPRIVATE 'github.com/reusee/*'
set -x GOPATH $HOME

alias a 'axel -n 10 -a'

set PATH $PATH $HOME/bin

alias gits 'git status'
alias gitm 'git commit'
alias gitp 'git push origin master'
alias gitps 'git push site master'

alias ll 'ls -ltr'
alias l 'ls -lv'

alias bd "aria2c -c -k 2M -x 16 -s 16 --user-agent 'netdisk;5.3.1.3;PC;PC-Windows;5.1.2600;WindowsBaiduYunGuanJia' --header 'Referer:http://pan.baidu.com/disk/home' -o"

alias rg 'rg -M 1024 --no-heading -L'

set -x ASPROOT /media/db/asproot

set -x PAGER less
set -x LESS "-iMSx4 -FX"

set -x PLAN9 /usr/lib/plan9
set PATH $PATH $PLAN9/bin
set -x venti 127.0.0.1

#set -x ALSA_CARD Generic
set -x ALSA_CARD M6

alias startx 'startx >> ~/.xlogs ^^ ~/.xlogs'

alias lsblk 'lsblk -o FSTYPE,LABEL,MOUNTPOINT,SIZE,SCHED,NAME,PARTUUID'

alias dn dotnet

set PATH $PATH /media/build/flutter/bin

set -x ENABLE_FLUTTER_DESKTOP true

set -x CHROME_EXECUTABLE chromium

function volumedetect
  ffmpeg -i $argv -af volumedetect -vcodec copy -f null /dev/null
end

alias PROXY 'env ALL_PROXY=socks5://localhost:9103 HTTP_PROXY=http://localhost:9102 SOCKS_PROXY=socks5://localhost:9103 HTTPS_PROXY=socks5://localhost:9103'

set -x FREETYPE_PROPERTIES "truetype:interpreter-version=35"

set -x VK_ICD_FILENAMES "/usr/share/vulkan/icd.d/amd_icd64.json" 

alias r 'rsync -avvz --partial-dir=.rsync-partial'

set -x CGO_CFLAGS_ALLOW '.*'

