# color chart reference https://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on %F{69}${vcs_info_msg_0_}%f%b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%B%F{208}%n%f in %F{76}${PWD/#$HOME/~}%f ${vcs_info_msg_0_} %#'
