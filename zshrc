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

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

PATH=/opt/homebrew/bin:`pwd`/development/flutter/bin:$PATH
eval "$(~/.rbenv/bin/rbenv init - zsh)"
eval "$(~/.rbenv/bin/rbenv init - zsh)"

export PATH="$PATH":"$HOME/.pub-cache/bin"

# pnpm
export PNPM_HOME="/Users/kyeongohkim/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export SAM_CLI_TELEMETRY=0

# grep color
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'

# aider
export PATH="/Users/kyeongohkim/.local/bin:$PATH"
