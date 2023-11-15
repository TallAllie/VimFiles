# .bashrc  (aileen)

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

path_append ()  { path_remove $1 $2; export $1="${!1}:$2"; }
path_prepend () { path_remove $1 $2; export $1="$2:${!1}"; }
path_remove ()  { export $1="`echo -n ${!1} | awk -v RS=: -v ORS=: '$1 != "'$2'"' | sed 's/:$//'`"; }
export -f path_append path_prepend path_remove


# User specific aliases and functions

alias whichsh="/bin/ps -p $$ -o comm="
alias gitdiff="git difftool --no-prompt --tool=gvimdiff"
alias gitconfig="git config credential.helper 'cache --timeout=3600'"
alias gist="git status"
alias givm="gvim"

ftp-up() {
  curl \
    -u "username:password" \
    "ftp://site.com" \
    -T "$1";
}

ftp-down() {
  curl \
    -u "username:password" \
    "ftp://site.com/$1" \
    --output "$1";
}


branch() {
  git rev-parse --abbrev-ref HEAD
}

cfig() {
  figlet -w 120 "$*" | sed -e 's@^@//     @';
}

cgoth() {
  figlet -f gothic -w 120 "$*" | sed -e 's@^@//     @';
}

gothic() {
  echo "<!--";
  figlet -f gothic -w 120 "$*" | sed -e 's/^/  --   /';
  echo "  -->";
}

fig() {
  figlet -f big -w 120 "$*" | sed -e 's/^/#   /';
}

small() {
  figlet -f small -w 120 "$*" | sed -e 's/^/#   /';
}

figl() {
  figlet -w 120 "$*" | sed -e 's/^/#   /';
}


if [ "$PS1" ]; then

  # PS1="[\u@\h \[\033[1m\]\$(branch)\[\033[00m\]]\$ "
  # PS1="[\u@\h \W]\\$ "

  alias ls="ls -F"
  alias ll="ls -alF"

  alias  wheat="xterm -vb -sb -sl 9999 -bg wheat         -fg black   -cr black   "
  alias  white="xterm -vb -sb -sl 9999 -bg darkslateblue -fg white   -cr white   "
  alias yellow="xterm -vb -sb -sl 9999 -bg darkslateblue -fg yellow3 -cr yellow3 "
  alias    big="xterm -vb -sb -sl 9999 -bg wheat         -fg black   -cr black   -fs 14 -fa liberation mono "
  alias   bigw="xterm -vb -sb -sl 9999 -bg teal          -fg white   -cr white   -fs 14 -fa liberation mono "
  alias   bigy="xterm -vb -sb -sl 9999 -bg darkslateblue -fg yellow3 -cr yellow3 -fs 14 -fa liberation mono "

  # https://clang.llvm.org/docs/ClangFormat.html
  if [ -e /path/to/clang-12.0.0/bin/clang-format ]; then
    alias format="/path/to/clang-12.0.0/bin/clang-format -i "
  fi
fi

set nobeep
set noclobber
# ulimit -c unlimited

path_prepend PATH ${HOME}/bin
path_append  PATH ${HOME}/.local/bin

if [ -r ${HOME}/.git-completion.bash ]; then
  source ${HOME}/.git-completion.bash
fi

export PDF_READER="evince"
export PAGER="less"
export LESSGLOBALTAGS="global"
export NINJA_STATUS="[%e %f/%t]"

# Uncomment to get core dump files
# ulimit -c unlimited

# Legacy...
#alias svndiff="svn diff --diff-cmd ${HOME}/bin/_gvimdiff.sh"
#export DEMO="${HOME}/svn/dev/trunk/dac_demo"
#export TREK4="${HOME}/svn/dev/trunk/trek4"
#export TREK5="${HOME}/svn/dev/trunk/trek5"
#export ARMAPP="${HOME}/svn/sup/projects/armv8"
#export SECAPP="${HOME}/svn/sup/customers/altera/secApp2"
#export SVNROOT="https://subversion.assembla.com/svn/breker-code"
#export SVNSUPPORT="https://subversion.assembla.com/svn/breker-todo"
#export SVN_EDITOR="gvim"

# vim:ts=2:sw=2 
