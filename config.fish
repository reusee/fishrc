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

set -U fish_color_autosuggestion      yellow
set -U fish_color_cancel              -r
set -U fish_color_command             brgreen
set -U fish_color_comment             brmagenta
set -U fish_color_cwd                 green
set -U fish_color_cwd_root            red
set -U fish_color_end                 brmagenta
set -U fish_color_error               brred
set -U fish_color_escape              brcyan
set -U fish_color_history_current     --bold
set -U fish_color_host                normal
set -U fish_color_match               --background=brblue
set -U fish_color_normal              normal
set -U fish_color_operator            cyan
set -U fish_color_param               brblue
set -U fish_color_quote               yellow
set -U fish_color_redirection         bryellow
set -U fish_color_search_match        'bryellow' '--background=brblack'
set -U fish_color_selection           'white' '--bold' '--background=brblack'
set -U fish_color_status              red
set -U fish_color_user                brgreen
set -U fish_color_valid_path          --underline
set -U fish_pager_color_completion    normal
set -U fish_pager_color_description   yellow
set -U fish_pager_color_prefix        'white' '--bold' '--underline'
set -U fish_pager_color_progress      'brwhite' '--background=cyan'

