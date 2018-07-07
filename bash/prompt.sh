DIR_COLOR="\e[38;2;131;165;152m"
RED="\e[38;2;251;73;52m"
YELLOW="\e[38;2;250;189;47m"
COLOR_OFF="\e[0m"
GREEN='\e[0;32m'

# PS1="\n \[$DIR_COLOR\]\w\n \[$RED\]\[$YELLOW\]\[$GREEN\]\[$COLOR_OFF\] "

if [ -f ~/.git-prompt.sh ]; then
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWSTASHSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  GIT_PS1_SHOWUPSTREAM="auto"
  GIT_PS1_HIDE_IF_PWD_IGNORED=true
#   GIT_PS1_SHOWCOLORHINTS=true
  . ~/.git-prompt.sh
fi

function virtualenv_info(){
    if [[ -n "$VIRTUAL_ENV" ]]; then
        if echo "$VIRTUAL_ENV" | grep -q "work"; then
            venv="${VIRTUAL_ENV##*dev/}"
        else
            venv="${VIRTUAL_ENV##*/}"
        fi
    else
        venv=''
    fi
    [[ -n "$venv" ]] && echo " ($venv)"
}
export PROMPT_COMMAND='__git_ps1 "\n \[$DIR_COLOR\]\w\[$RED\]" " \[$YELLOW\]$(virtualenv_info)\n\[$RED\] \[$YELLOW\]\[$GREEN\]\[$COLOR_OFF\] "'
