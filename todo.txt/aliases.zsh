# stoled from https://github.com/holman/dotfiles/blob/master/todo.txt/aliases.zsh
# todo.sh: https://github.com/ginatrapani/todo.txt-cli
function t() {
if [ $# -eq 0 ]; then
  $ZSH/todo.txt/todo.sh ls
else
  $ZSH/todo.txt/todo.sh $*
fi
}
alias n="t ls +next"
