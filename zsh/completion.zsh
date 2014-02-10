# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# other completion stuff
zstyle ':completion:*' use-cache on
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' \
                                    'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle -e ':completion:*' completer '
    if [[ $_last_try != "$HISTNO$BUFFER$CURSOR" ]]
    then
        _last_try="$HISTNO$BUFFER$CURSOR"
        reply=(_force_rehash _complete _match _prefix)
    else
        reply=(_ignored _correct _approximate _complete)
    fi'
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format "%{${fg[blue]}%}%d%{$reset_color%}"
zstyle ':completion:*:messages' format "%{${fg[green]}%}%d%{$reset_color%}"
zstyle ':completion:*:warnings' format \
       "%{${fg[red]}%}No matches for:%{$reset_color%} %d"
zstyle ':completion:*:corrections' format \
       "%{${fg[red]}%}%d (errors: %e)%{$reset_color%}"
zstyle ':completion:*' group-name ''
[[ -n "$LS_COLORS" ]] && zstyle ':completion:*' list-colors \
                                "${(s.:.)LS_COLORS}"
zstyle ':completion:*match:*' original only
zstyle -e ':completion:*:approximate:*' \
           max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'
zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*:(cp|emacs|diff|kill|ls|rm|rmdir|scp|vim|vimdiff):*' \
       ignore-line yes
zstyle -e ':completion:*:processes' command '
    if (( $funcstack[(eI)$_comps[sudo]] ))
    then
       reply="ps axho user,pid,command"
    else
       reply="ps xho pid,command"
    fi'
zstyle -e ':completion:*:processes-names' command '
    if (( $funcstack[(eI)$_comps[sudo]] ))
    then
       reply="ps axho command"
    else
       reply="ps xho command"
    fi'

