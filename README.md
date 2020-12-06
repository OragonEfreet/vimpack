# Personal VIM environment

This repository is a vim package that holds and configures all plugins
I personnally use in vim.

The following plugin are available:

- [FZF](https://github.com/junegunn/fzf): Fuzzy Finder for quick file search
  and open.

## Prerequisite

My configuration file has a few prerequisites:

- [ripgrep](https://github.com/BurntSushi/ripgrep): _FZF_ uses it


Arch Linux:
```
pacman -S ripgrep
```

## Installation

With Vim 8.0 or later, go to `~/.vim` and clone the repository along with
submodules:

```
mkdir -p ~/.vim
cd ~/.vim
git clone --recurse-submodules git@github.com:OragonEfreet/vimpack.git
```

## Usage

### Fuzzy Finder

Fuzzy Finder by _FZF_ uses _ripgrep_ to search files.
The shortcut is `<C-p>`.
At first use, _FZF_ will search for the `fzf` executable.
If not found, it will prompt for automatic build.

