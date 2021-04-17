source ~/dot-files/profile

autoload -Uz compinit && compinit
autoload -Uz vcs_info

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

PROMPT='%~%F{green}$(parse_git_branch)%f '
#RPROMPT='%*'
