# stoled from https://github.com/holman/dotfiles/blob/master/todo.txt/aliases.zsh
# todo.sh: https://github.com/ginatrapani/todo.txt-cli
# alias to ./todo.sh
function t() {
  if [ $# -eq 0 ]; then
    $ZSH/todo.txt/todo.sh ls
  else
    $ZSH/todo.txt/todo.sh $*
  fi
}

# add a todo in the +next, where the first param is the priority
function na() {
  t a "($1:u) ${*:2} +next"
}

# list all +next todos
alias n="t ls +next"
