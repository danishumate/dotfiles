NODE_VERSION="0.10.26"
NODE_PATH="$HOME/local/node/bin:$HOME/local/node/lib/node_modules"
export NODE_PATH

# nvm
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh
nvm use $NODE_VERSION