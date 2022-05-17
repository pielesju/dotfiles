  _               _              
# | |__   __ _ ___| |__  _ __ ___ 
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__ 
# |_.__/ \__,_|___/_| |_|_|  \___|

# prompt

spc=$(i3-msg -t get_workspaces \ | jq '.[] | select(.focused==true).name')
spc=${spc#*\"}
spc=${spc%\"}

PS1="\w $spc \$ "

# navigation commands
alias ..='cd ..'
alias spawn='cd /'
alias home='cd ~'

# ls commands
alias count='ll | wc -l'
alias lms='ls -liah'
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -lia'

# pacman commands
alias install='sudo pacman -S'
alias deinstall='sudo pacman -R'
alias update='sudo pacman -Syu'
alias orphans='sudo pacman -Rs $(pacman -Qqtd)'

# X11 commands
alias dock='xrandr --output DP2-3 --mode 1920x1080 --output eDP1 --off'
alias undock='xrandr --output eDP1 --mode 1366x768 --output DP2-3 --off'
alias undockx='xrandr --output eDP1 --mode 1366x768 --right-of DP2-3
--output DP2-3 --mode 1920x1080'
alias startx='startx "$XDG_CONFIG_HOME/X11/xinitrc" --
"$XDG_CONFIG_HOME/X11/xserverrc" vt1'

# application init replacements
alias vim='vim -u ~/.config/vim/vimrc'
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'

# execute
cd /home/julian
#./files/scripts/fetch.sh
./files/scripts/dotfiles.sh
pacman -Qqe > files/dotfiles/pkglist.txt

# delete random files
cd /home/julian
rm -rf .xsession-errors .xsession-errors.old .python_history Downloads

neofetch | lolcat

# ls colors
LS_COLORS='rs=0:di=01;36:ln=46;01:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:';
export LS_COLORS

# environmental variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GTK2_RC_FILE="$XDF_CONFIG_HOME"/gtk-2.0/gtkrc
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
alias gpg2='gpg2 --homedir "$XDG_DATA_HOME"/gnupg'
export HISTFILE="$XDG_DATA_HOME"/bash/history
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export LESSHISTFILE="/dev/null"
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
