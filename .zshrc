# color chart reference https://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
NEWLINE=$'\n'

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%B%F{208}%n%f %F{76}${PWD/#$HOME/~}%f %F{69}${vcs_info_msg_0_}%f ${NEWLINE}%b'

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
