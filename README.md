# VIM-SIMPLE
## What is vim-simple ?

vim-simple is a neovim configuration, targeted for low-level programmers.
Most of vim configurations use lsp, linters and other complicated fancy plugins
that are not really targeted for low-level developpement(linters doesn't quite work with
unit builds, lsp are a pain to use with compiled languages...).
vim-simple isn't really a complete solution to these problems: it does only provide simple features
like build-in vim autocompletion to have a decent base configuration to work with.

coc.nvim is still provided however to provide better completion and linting for interpreted languages.

You are free to copy this configuration, remove some of what you think is bloat(for example:
fzf might be bloat for you) or add some good stuff and maybe make a fork.

## Features:

- AutoCompletion(compiled: vim native completion, interpreted: coc.nvim)
- Fuzzy file finding
- File browser
- Compilation(default build file: build.bat)
- Airline
- Some good colorschemes

Leader key is space.

- Space + e = open file browser
- Space + b = compile;
- Space + (h, j, k, l) = move to a different buffer when the window is splited
