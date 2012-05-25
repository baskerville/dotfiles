export EDITOR=vim
export PAGER=less
export BROWSER=dwb
export MANWIDTH=80

export HISTSIZE=16383
export SAVEHIST=16383
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoreboth

export XDG_DOWNLOAD_DIR="$HOME/incoming"
export XDG_DOTFILES_DIR="$HOME/.dotfiles"
export XDG_COLORS_DIR="$XDG_DOTFILES_DIR/colors"
export XDG_TRASH_DIR="$HOME/.trash"
export XDG_BIN_DIR="$HOME/bin"
export XDG_TMP_DIR="$HOME/tmp"
export XDG_AUR_HOME="$HOME/src/aur"

export PYTHONIOENCODING='utf-8'
export TEXINPUTS=".:$XDG_DATA_HOME/texmf//:"
export NNTPSERVER='news.orange.fr'
export GREP_COLORS='ms=1;32:mc=1;32:sl=:cx=:fn=1;39:ln=1;34:bn=1;36:se=1;30'
export STDERRED_ESC_CODE=$(echo -e "\e[1;31m")

export SHELL_CONFIG="$HOME/.bashrc"
export SHELL_PROFILE="$HOME/.bash_profile"
export SHELL_ALIASES="$HOME/.shell_aliases"
export SHELL_FUNCTIONS="$HOME/.shell_functions"

export MICRO=/media/micro
export DATA=/media/data
export TRAVELER=/media/traveler
export HEXAGON=/media/hexagon

export WALLPAPER="$HOME/.wallpaper"

export DPMS_STANDBY=360
export DPMS_SUSPEND=420
export DPMS_OFF=480

export LESS_TERMCAP_mb=$'\e[1;31m'     # begin blinking
export LESS_TERMCAP_md=$'\e[1;35m'     # begin bold
export LESS_TERMCAP_me=$'\e[0m'        # end mode
export LESS_TERMCAP_so=$'\e[1;40;36m'  # begin standout - info box
export LESS_TERMCAP_se=$'\e[0m\e[?25l' # end standout
export LESS_TERMCAP_us=$'\e[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\e[0m'        # end underline

source "$HOME/.coordinates"

[ -d "$XDG_BIN_DIR" ] && export PATH="$PATH:$XDG_BIN_DIR"

if [[ -z $DISPLAY && $(tty) = /dev/tty1 ]]; then
  startx >& "$HOME/.Xlog"
  cp "$HOME/.Xlog "$HOME/.Xlog.bak""
  logout
fi

# vim: set ft=sh:
