if has('win32')
  source $HOME/Appdata/Local/nvim/settings.vim
  source $HOME/Appdata/local/nvim/plugins.vim
  source $HOME/Appdata/local/nvim/scheme.vim
  source $HOME/Appdata/local/nvim/mappings.vim
  source $HOME/Appdata/local/nvim/coc.vim
  source $HOME/Appdata/local/nvim/fzf.vim
else
  source $HOME/.config/nvim/settings.vim
  source $HOME/.config/nvim/plugins.vim
  source $HOME/.config/nvim/scheme.vim
  source $HOME/.config/nvim/mappings.vim
  source $HOME/.config/nvim/coc.vim
  source $HOME/.config/nvim/fzf.vim
endif
