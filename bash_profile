PATH=/usr/local/bin:$PATH:$HOME/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
PS1='\W$(__git_ps1 " (%s)") $ '
export EDITOR=vim
alias g=git
alias be="bundle exec"
alias bo="bundle open"
alias v=vim
set -o vi
