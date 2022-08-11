set -gx PF_INFO "ascii title os host kernel uptime memory wm"
set -gx PF_SEP ""
set -gx EDITOR "nvim"
set -gx FZF_DEFAULT_OPTS "--height=30% --layout=reverse"
set -gx PATH "/usr/bin:/usr/local/bin:/usr/share/bin:/home/chm46e/bin:/opt/rustc/bin:/opt/jdk/bin:/home/chm46e/.local/bin:/home/chm46e/.cargo/bin:/home/chm46e/.emacs.d/bin:/opt/wine:/opt/ant/bin:/usr/local/go/bin"
set -gx LANG "en_US.UTF-8"
set -gx LC_COLLATE "C.UTF-8"
set -gx LD_LIBRARY_PATH "/usr/lib:/usr/local/lib:/usr/qt5/lib"
set -gx NNN_BMS "a:$HOME/ap;d:$HOME/dl;D:$HOME/dm;m:$HOME/ms;p:$HOME/pt;v:$HOME/vd;s:$HOME/pt/fs"
set -gx NNN_PLUG "a:autojump;c:chksum;f:fzcd;g:gitroot;u:imgur;i:imgview"
set -gx NNN_COLORS "7521"
set -gx NNN_OPTS "deHrQ"
set -gx JAVA_HOME "/opt/jdk"
set -gx ANT_HOME "/opt/ant"

source ~/.config/fish/alias.fish
source ~/.config/fish/syntaxhl.fish
source ~/.config/fish/autojump.fish
thefuck --alias | source

clear
starship init fish | source

function fish_greeting
    echo ""
    pfetch
end
