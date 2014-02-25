CBMACPATH="$HOME/Applications/Couchbase Server.app/Contents/Resources/couchbase-core/bin"
CBSPATH="$HOME/src/private/cbsupport/bin"
GROOVYPATH="$HOME/sandbox/groovy-2.2.1/bin"
LOCALPATH="/usr/local/bin:/usr/local/sbin:/usr/local/sbin:/usr/local/utilities/bin:$HOME/local/bin"
POSTGRESPATH="/Applications/Postgres93.app/Contents/MacOS/bin"
RBENVAPTH="$HOME/.rbenv/bin:$HOME/.rbenv/shims"
XCODEPATH="/Applications/Xcode.app/Contents/Developer/usr/bin"
ZSHBINPATH="$HOME/.dotfiles/bin"

PATH="$LOCALPATH:$PATH:$ZSHBINPATH:$CBSPATH:$RBENVAPTH:$POSTGRESPATH:$XCODEPATH:$CBMACPATH:$GROOVYPATH"

export PATH

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"