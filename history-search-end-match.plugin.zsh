# history-search-end-match.plugin.zsh

# Description: Mimics Bash-style history-search behaviour with cursor at line end.
# - Up/Down arrow scrolls through history that matches the beginning of the current line.
# - Cursor is placed at the end of the matched line.

# Emulates bash-style history-search with cursor-at-end in zsh

# Only activate in interactive terminals with arrow key capability
[[ $- == *i* && "$TERM" != 'dumb' ]] || return

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search

function hs-up-end() {
  up-line-or-beginning-search
  zle end-of-line
}

function hs-down-end() {
  down-line-or-beginning-search
  zle end-of-line
}

zle -N hs-up-end
zle -N hs-down-end

bindkey '^[[A' hs-up-end      # Up arrow
bindkey '^[[B' hs-down-end    # Down arrow

# Optional: Vim-style keys
bindkey '^P' hs-up-end
bindkey '^N' hs-down-end
