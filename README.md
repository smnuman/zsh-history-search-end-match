# zsh-history-search-end-match

🎯 Mimics Bash-style `history-search-backward` in Zsh with cursor positioned at the **end** of the matched line.

## Features

- Matches commands from history that begin with your current input
- Cursor is placed at the end of the recalled line (like Bash)
- Works across emacs and vi keymaps
- Toggle behaviour with `$ZSH_HISTORY_SEARCH_STYLE`

## Toggle Modes

```zsh
ZSH_HISTORY_SEARCH_STYLE="bashlike"  # Cursor at end (default)
ZSH_HISTORY_SEARCH_STYLE="zshlike"   # Cursor at start
```

## Installation

```zsh
zsh_add_plugin your-gh-username/zsh-history-search-end-match
```