# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="afowler"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(svn) # git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/opt/local/bin:/opt/local/sbin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/git/bin:/Users/chip.childers/bin:/usr/local/mysql/bin/:~/bin/confluencetools:/usr/local/mysql/bin:/opt/local/libexec/perl5.12/sitebin/:/Users/chip.childers/.rvm/gems/ruby-1.9.2-p320/bin:~/bin
export MANPATH=/opt/local/share/man:$MANPATH

[ -x "/Applications/MacVim.app/Contents/MacOS/Vim" ] && alias vim=/Applications/MacVim.app/Contents/MacOS/Vim

alias buildserver='ssh sg-user@84.51.246.11'
alias myvm="ssh -p 8022 localhost"
alias found="ssh -p 8023 localhost"
alias svndiff='~/svndiff.sh'
alias lab='~/connecttolab'
alias vpn='~/connectvpn'
alias prod='~/connecttoprod'
alias vi='vim'
alias mutt='nocorrect mutt'
alias gpg='nocorrect gpg'
alias fle="perl -pi -e 's/\r/\n/g' "
alias people='ssh chipchilders@people.apache.org'
alias timeline='t stream search cloudstack \#cloudstack @cloudstack'

export SVN_EDITOR=/usr/bin/vim
export EDITOR=/usr/bin/vim
export SHELL=/bin/zsh

export CATALINA_HOME=/usr/local/apache-tomcat-6.0.32

growl() { echo -e $'\e]9;'${1}'\007' ; return ; }

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export SVN_MERGE=~/scripts/svnmerge

export MAVEN_OPTS="-XX:MaxPermSize=1024m -Xmx2048m -Xdebug -Xrunjdwp:transport=dt_socket,address=8787,server=y,suspend=n"

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

#Todo.txt customizations
export TODOTXT_SORT_COMMAND='env LC_COLLATE=C sort -k 2,2 -k 1,1n'
export TODOTXT_DEFAULT_ACTION=ls
alias t='todotxt -d ~/.todo/config' 
