# TheShadowFog's config
PATH="$PATH:/usr/sbin"
PATH="$PATH:/sbin/"
PATH="$PATH:/usr/local/bin/"
PATH="$PATH:/usr/bin/"
PATH=$PATH:/usr/local/bin:~/.flex/bin/
export COLORTERM="yes"
export EDITOR="/usr/bin/nano"
export GREP_COLOR=31
export HISTORY=1000
export SAVEHIST=1000
export GDK_USE_XFT=1    #   For old gtk applications
export QT_XFT=true      #   For old qt applicatios

BLACK="%{"$'\033[01;30m'"%}"
RED="%{"$'\033[01;31m'"%}"
GREEN="%{"$'\033[01;32m'"%}"
YELLOW="%{"$'\033[01;33m'"%}"
BLUE="%{"$'\033[01;34m'"%}"
MAGENTA="%{"$'\033[01;35m'"%}"
CYAN="%{"$'\033[01;36m'"%}"
BOLD="%{"$'\033[01;39m'"%}"
NORM="%{"$'\033[00m'"%}"

bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab
# for rxvt
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# for guake
bindkey "\eOF" end-of-line
bindkey "\eOH" beginning-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "\e[3~" delete-char # Del

setopt completealiases
autoload -U compinit; compinit

zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no result for : %d%b'
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s

# Remove trailing slashes
zstyle ':completion:*' squeeze-slashes true

# Use cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh_cache

# Prevent CVS files/directories from being completed
zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'
zstyle ':completion:*:cd:*' ignored-patterns '(*/)#CVS'

# Allow mistakes
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
#zstyle ':completion:*:approximate:*' max-errors 1 numeric
zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'

# [?] Ignore completion functions for commands you donâ€™t have
zstyle ':completion:*:functions' ignored-patterns '_*'

# Colors
# You can also add different colours to the completion list - as displayed in the screenshot below. To be more specific, we'll use the same colours that GNU ls shows with the --color option
zmodload zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Do not show already selected elements
zstyle ':completion:*:rm:*' ignore-line yes
zstyle ':completion:*:mv:*' ignore-line yes
zstyle ':completion:*:cp:*' ignore-line yes

#   Sudo completion
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
    /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# PID completion
zstyle ':completion:*:*:kill:*:processes'   list-colors "=(#b) #([0-9]#)*=36=31"
zstyle ':completion:*:*:kill:*'             menu yes select
zstyle ':completion:*:kill:*'               force-list always
zstyle ':completion:*:*:killall:*'          menu yes select
zstyle ':completion:*:killall:*'            force-list always
zstyle ':completion:*:processes'            command "ps -au$USER"

zstyle ':completion:*:cd:*' ignore-parents parent pwd

# xdvi completion
zstyle ':completion:*:*:xdvi:*' menu yes select
zstyle ':completion:*:*:xdvi:*' file-sort time



autoload -U colors && colors
HISTFILE=~/.histfile
HISTSIZE=1000
setopt autopushd pushdminus pushdsilent pushdtohome
setopt autocd
setopt cdablevars
setopt ignoreeof
setopt interactivecomments
setopt nobanghist
setopt noclobber
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt SH_WORD_SPLIT
setopt nohup

PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%1~ %{$reset_color%}%# "

source ~/.functions
source ~/.aliases

if [ $TERM = "linux" ]; then
    setfont ter-v16n
fi
#xhost local:mpromber > /dev/null

screenfetch
# su -c 'mount -t vfat /dev/sdc /SANSA\ DISK'

#LANG=en_US.UTF-8
#LANGUAGE=en_US.UTF-8
LANG="en_US.UTF-8" 
SUPPORTED="en_US:en" 
SYSFONT="latarcyrheb-sun16" 

export ASIO_INPUTS=4
export ASIO_OUTPUTS=8
export LC_ALL=en_US.UTF-8
export LANG="POSIX" 

