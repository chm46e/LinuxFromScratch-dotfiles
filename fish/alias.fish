# package manager (I use Linux from scratch, so no) # 
#alias in="sudo emerge -aqt -j4"
#alias dein="sudo emerge --ask --depclean"
#alias softup="sudo emerge --sync; sudo emerge --update --deep --with-bdeps=y --ask --quiet --tree -j4 @world"
#alias se="sudo emerge --searchdesc"
#alias aure="sudo emerge --verbose --depclean"

# quick dir/file management # 
alias la="exa -aalg --color=always --icons --group-directories-first"
alias ls="exa -a --icons --group-directories-first"
alias ll="exa -lgiS --icons --time-style=full-iso --group-directories-first"
alias lf="exa -lDg --icons --group-directories-first"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."
alias .6="cd ../../../../../.."
alias cp="cp -riv"
alias mv="mv -iv"
alias rn="rename -ov"
alias ln="ln -siv"
alias mkdir="mkdir -pv"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias grepf="fgrep --color=auto --file"
alias egrepf="egrep --file"
alias mine="sudo chown -R chm46e:chm46e"

# configuration files #
alias conf-alias="$EDITOR ~/.config/fish/alias.fish"
alias conf-fish="$EDITOR ~/.config/fish/config.fish"
alias conf-fish-syntax="$EDITOR ~/.config/fish/syntaxhl.fish"
alias conf-ss="$EDITOR ~/.config/starship.toml"
alias conf-grub="sudo $EDITOR /boot/grub/grub.cfg"

# init system (openrc) #
alias sys-s="sudo rc-status"
alias sys-show="sudo rc-update show"
alias sys-en="sudo rc-update add"
alias sys-di="sudo rc-update del"
function sys-start
	sudo rc-service $1 start
end
function sys-stop
	sudo rc-service $1 stop
end
function sys-rs
	sudo rc-service $1 restart
end

# linux kernel # 
alias rmmod="sudo rmmod -v"
alias insmod="sudo insmod -v"

# networking #
alias ping="ping -c5"
alias prasp="ping -c5 192.168.1.8" # ping pi4 server
alias ip-all="curl ifconfig.me/all"
alias ip-me="curl ifconfig.me/ip"

# python #
alias py="py3"
alias python="py"
alias py2="python2"
alias py3="python3"

# misc #
alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias wget="wget -c"
alias su="su -s /bin/fish"
alias fnlib="sudo ldconfig -p | grep"

# disk #
alias free="free -mt"
alias df='df -h'
alias dsize="ncdu"

# fix typos #
alias ,,=".."
alias ,,,="..."
alias ,,,,="...."
alias pdw="pwd"
alias search="se"
alias l='la'
alias cclear="clear"
alias clea="clear"
alias c="clear"
alias cls="clear"
alias al="la"

# git #
alias gs="git status --long -b --show-stash"

alias gl="git log --decorate=short --graph --stat"
alias gll="git log --decorate=short --graph --oneline"
alias glf="gl --follow"
alias glg="gl -i --grep"
alias glp="gl -p" 

alias ga="git add -v"
alias gaa="ga ."
alias gae="ga -e"

alias gc="git commit"
alias gcp="gc -p -v --signoff"
alias gcu="git reset --soft HEAD^" # undo commit
alias gcr="gcp -a -c ORIG_HEAD" # redo commit
alias gchardu="git reset --hard	HEAD~1" # hard undo last commit
alias grr="git reset"

alias gcl="git clone -j 4"
alias gi="git init -b master"

alias gr="git restore"
alias grs="gr --staged"
alias gra="gr ."

alias gp+="git push -v origin HEAD"
alias gp-="git pull -v origin HEAD"
alias gf="git fetch -v"

alias gb="git branch --all -v"
alias gba="git branch -v"
alias gbd="gba -d"
alias gbm="gba -m"
alias gbc="gba -c"
alias gch="git checkout"
alias gsw="git switch"

alias gt="git tag -l"
alias gta="git tag"
alias gtd="git tag -d"
alias gtv="git tag -v"

alias gm="git merge"
alias gmr="git rebase"

alias gsl="git stash list"
alias gspush="git stash push -a"
alias gspop="git stash pop"
alias gspopb="git stash branch"
alias gsc="git stash clear"
alias gsd="git stash drop"
alias gsh="git stash show"

# safe file/dir removal #
alias rm="rip -i"
# rr is linked to rm in /usr/bin

# quick c #
function compile
    gcc $argv -o bin
    ./bin
end
alias comp="compile"
alias cfg-meson="mkdir build && cd build && meson --prefix=/usr --buildtype=release .."
alias cfg-cmake="mkdir build && cd build && cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release .."
alias cfg-conf="./configure --prefix=/usr"

# archive extract #
alias untar="tar -xvf"
alias ex="dtrx -v"

# os #
alias qemu="qemu-system-x86_64"

# Tlp #
alias tlp-status="tlp-stat -s"
alias tlp-config="tlp-stat -c"
alias tlp-battery="tlp-stat -b"
alias tlp-temps="tlp-stat -t"
alias tlp-proc="tlp-stat -p"
alias tlp-warn="tlp-stat -w"
