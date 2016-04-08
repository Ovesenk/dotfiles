alias sudo='sudo '
alias please='sudo $(history -p !!)'
alias pong='ping 8.8.8.8 -c 4'
alias lg='ls -la | grep'
alias my_ip='curl ifconfig.me'
alias :e=vim
alias vimrc='vim ~/.vimrc'
alias office='soffice -o'
alias docview='evince'
alias psag='ps aux | grep'
alias tarball='tar cvzf' 
alias home='cd ~'

alias u='sudo apt-get update && sudo apt-get dist-upgrade'
alias au='sudo apt-get update'
alias ad='sudo apt-get dist-upgrade'
alias as='sudo apt-cache search'
alias ai='sudo apt-get install'
alias ar='sudo apt-get remove'
alias ap='sudo apt-get purge'
alias ashow='apt-get show'

alias ..='cd ..'
alias ...='cd ../..'

# CS 362 Aliases
alias cshome='cd ~/cs362sp16core'
alias csdom='cd ~/cs362sp16core/dominion'
alias domc='vim ~/cs362sp16core/dominion/dominion.c'
alias domh='vim ~/cs362sp16core/dominion/dominion.h'
alias hw='docview ~/cs362sp16core/assignments/assignments.pdf'


# newly update tar should do the same thing
extract () {
  if [ $# -eq 0 ]; then
    echo "ERROR: no input file specified."
    echo "    USAGE:"
    echo "    $ extract COMPRESSED_ARCHIVE.*"
  else
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xvjf $1    ;;
        *.tar.gz)    tar xvzf $1    ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       rar x $1       ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xvf $1     ;;
        *.tbz2)      tar xvjf $1    ;;
        *.tgz)       tar xvzf $1    ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)           echo "ERROR: '$1' is in an unsupported format." ;;
      esac
    else
      echo "'$1' is not a valid file!"
    fi
  fi
}

config () {
  vim ~/.bashrc && source ~/.bashrc
}

#..() {
#  if [ $1 -ge 0 2> /dev/null ]; then
#    x=$1;
#  else
#    x=1;
#  fi
#  for (( i = 0; i < $x; i++ )); do
#    cd ..;
#  done;
#}

md () {
  mkdir -p "$@" && cd "$@";
}
