alias py="/usr/local/bin/python3"
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"

export PATH
export VAGRANT_PATH="~/*path_to_your_wufoo_project*/wufoo"
alias wws="ssh vagrant@172.28.128.15 -p 22"
alias wdb="ssh vagrant@172.28.128.16 -p 22"
export PATH=/usr/local/mysql/bin:$PATH

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]$(__git_ps1 " (%s)")]\$ '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Desktop

# added by Anaconda3 4.1.1 installer
export PATH="/Users/michaellim/anaconda/bin:$PATH"

# Docker Compose aliases
alias dc='docker-compose'
alias dcr='docker-compose run --rm'

# Clear Symfony cache aliases
alias wfclearsymcache='rm -rf ../docker/data/wufoo/sf2/cache/loc/* ../docker/data/wufoo/sf2/cache/prod/*'

# Aliases to toggle Wufoo inactive servers in host file
alias sudo='sudo '
alias wfinacton="sed -i -e '/75.98.93.100/s/^#//g' /etc/hosts"
alias wfinactoff="sed -i -e '/75.98.93.100/s/^#*/#/g' /etc/hosts"
PATH=/Users/michaellim/.Pokemon-Terminal:/Users/michaellim/anaconda/bin:/Users/michaellim/.rvm/gems/ruby-2.2.1/bin:/Users/michaellim/.rvm/gems/ruby-2.2.1@global/bin:/Users/michaellim/.rvm/rubies/ruby-2.2.1/bin:/usr/local/mysql/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/michaellim/.rvm/bin
