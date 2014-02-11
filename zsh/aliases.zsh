alias apeshit='sudo apt-get update && sudo apt-get upgrade'
alias c='cd'
alias cls='clear'
alias hazdjango='echo -n "you can haz a django in just a minute..." && svn --quiet co http://code.djangoproject.com/svn/django/trunk/ ./django_trunk && echo "yay! you haz a django now!"'
alias ll='ls -l'
alias la='ls -A'
alias lah='ls -alh'
alias md='mkdir -p'
alias rd='rm -rf'
alias reload!='. ~/.zshrc'
alias rtfm='man'
alias scr="screen -raAd"
alias sls='screen -ls'
alias tmux="TERM=screen-256color-bce tmux"
alias topfsz="du -ah . | sort -n -r | head -n $1"
alias vncssh="ssh -t -L 5900:localhost:5900 $1 'x11vnc -localhost -display :0 -shared -forever -ncache 10 -rfbauth $HOME/.vnc/passwd'"
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias mort='java -Xmx2g -jar /Applications/mortimer.jar'
# alias grep='egrep --color=always --exclude=\*.svn\* -r -n'

