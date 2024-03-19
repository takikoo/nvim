
## Install
- Make a backup of your current Neovim files:

```sh
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

## Use in parallel with normal nvim
clone to `~/.config/nvim-tko`

```sh
alias nvim-tko='NVIM_APPNAME="nvim-tko" nvim'
```
