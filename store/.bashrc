# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias cdg="cd /home/app/ruby/lib/ruby/gems/1.9.1/gems"
alias cds="cd /home/app/ruby/lib/ruby/gems/1.9.1/gems/seimtra-0.0.1"
alias vm="vi lib/bin/projects/module.rb"
alias vg="vi lib/seimtra/generator.rb"

alias gita="git add -A"
alias gitm="git add -A && git commit -m "
alias gitp="git push"

