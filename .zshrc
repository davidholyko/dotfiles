# Color chart reference https://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
# F{208} -> ORANGE
# F{76} -> GREEN
# F{69} -> BLUE

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
NEWLINE=$'\n'

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%B%F{208}%n%f %F{76}${PWD/#$HOME/~}%f %F{69}${vcs_info_msg_0_}%f ${NEWLINE}%b'

# I don't remember what this does exactly...
# Maybe something with the colors
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Set up auto-complete
autoload -Uz compinit && compinit