umask 022

export EDITOR=/usr/bin/vim
export PAGER="less"
export BROWSER="open"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PYTHONSTARTUP="$HOME/.pythonrc.py"
export SHELL="/bin/zsh"
export VISUAL=/usr/bin/vim
export ZDOTDIR="$HOME/.zsh"

# Only set this if we haven't set $EDITOR up somewhere else previously
if [[ "$EDITOR" == "" ]] ; then
  # Use TextMate 2 for my editor
  export EDITOR='mate'
fi

# directory colors
if [[ "$TERM" != dumb && -n "$(command -v dircolors)" ]]
then
    eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='ls --color=auto --format=vertical'
    alias vdir='ls --color=auto --format=long'
else
    export CLICOLOR=1
    export LSCOLORS=exgxfxdacxdadahbadabec
    LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:'\
'bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:'\
'st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:'\
'*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:'\
'*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:'\
'*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:'\
'*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:'\
'*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:'\
'*.xwd=01;35:*.flac=01;35:*.mp3=01;35:*.mpc=01;35:*.ogg=01;35:*.wav=01;35:'
    export LS_COLORS
    alias dir='ls --format=vertical'
    alias vdir='ls --format=long'
fi

# Docker for Mac OS X
export DOCKER_HOST=tcp://localhost

# hub
eval "$(hub alias -s)"

# less stuff
export LESS='-iR'
export LESSOPEN="| $HOME/.dotfiles/bin/lesspipe %s"
export LESS_TERMCAP_mb=${fg_bold[red]}
export LESS_TERMCAP_md=${fg_bold[blue]}
export LESS_TERMCAP_me=$reset_color
export LESS_TERMCAP_se=$reset_color
LESS_TERMCAP_so=$'\e['"${color[bold]};${color[bg-blue]};${color[yellow]}m"
export LESS_TERMCAP_so
export LESS_TERMCAP_ue=$reset_color
export LESS_TERMCAP_us=${fg_bold[green]}

## rbenv
eval "$(rbenv init -)"

if [[ -e "$HOME/.rbenv/completions/rbenv.zsh" ]];
    then source $HOME/.rbenv/completions/rbenv.zsh
fi

# TextMate
export TM_GIT=/usr/local/bin/git

# Virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_PYTHON=$(which python)
if [[ -e /usr/local/bin/virtualenvwrapper.sh ]]; then
  source /usr/local/bin/virtualenvwrapper.sh
fi

