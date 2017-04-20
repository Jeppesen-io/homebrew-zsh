export_and_mkdir  TODO_DIR "$XDG_DATA_HOME/todo.sh"

# Your todo/done/report.txt locations
export TODO_FILE="$TODO_DIR/todo.txt"
export DONE_FILE="$TODO_DIR/done.txt"
export REPORT_FILE="$TODO_DIR/report.txt"

export TODOTXT_DEFAULT_ACTION=ls

alias t=todo.sh
