# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PATH=/usr/local/src/vim74/bin:$PATH
export PATH
export PATH="$PATH:$HOME/curl-7.43.0/install.com"
export PATH="$PATH:$HOME/openssl-1.0.2d/install.com"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
