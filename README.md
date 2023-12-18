# Personal VIM environment

This repository is a vim package that holds and configures all plugins I personnally use in vim.

![showcase](showcase.png)

The following plugin are available:

- [Catpuccin](https://github.com/catppuccin/vim): Theme 
- [FZF](https://github.com/junegunn/fzf): Fuzzy Finder for quick file search.
- [FZF.vim](https://github.com/junegunn/fzf.vim): _FZF_ enhancements
- [vim-airline-theme](https://github.com/vim-airline/vim-airline-themes): Set of themes for vim-airline (Dracula is used).
- [vim-airline](https://github.com/vim-airline/vim-airline): Status bar displaying useful informations
- [vim-easy-align](https://github.com/junegunn/vim-easy-align): A simple, easy-to-use Vim alignment plugin
- [vim-repeat](git@github.com:tpope/vim-repeat.git): Use the `.` command with plugin remaps
- [vim-sensible](https://github.com/tpope/vim-sensible): Vim defaults everyone can agree on
- [vim-surround](https://github.com/tpope/vim-surround): Quoting/parenthesizing made simple 
- [vim-todo-list](https://github.com/aserebryakov/vim-todo-lists): Vim plugin for TODO lists
- [vim-toml](https://github.com/cespare/vim-toml): Vim syntax for TOML

## Prerequisite

The configuration file has a few prerequisites:

- [ripgrep](https://github.com/BurntSushi/ripgrep): _FZF_ uses it
- [Powerline fonts](https://github.com/powerline/fonts): Used by vim-airline


### Arch-based:
```
pacman -S ripgrep powerline-fonts
```

## Installation

With Vim 8.0 or later, go to `~/.vim` and clone the repository along with
submodules:

```
mkdir -p ~/.vim/pack && cd ~/.vim/pack
git clone --recursive https://github.com/OragonEfreet/vimpack.git
```

## Usage


### Shortcuts

| Shortcut        | N | I | V | S | C | O | Command                       | Description                        |
| --------------- | - | - | - | - | - | - | -------------------           | ---------------------------------- |
| `<C-p>`         | X |   |   |   |   |   | `:<C-u>Files<CR>`             | Open file finder                   |
| `<C-k>`         | X |   |   |   |   |   | `:bnext`                      | Jump to the next buffer            |
| `<C-j>`         | X |   |   |   |   |   | `:bprev`                      | Jump to the previous buffer        |
| `<Leader>a`     | X | X |   |   |   |   | `<Plug>(EasyAlign)`           | Enter _EasyAlign_ interactive mode |
| `<Leader>pg`    | X |   |   |   |   |   | `:<C-u>GFiles?<CR>`           | Open git changes finder            |
| `<Leader>pb`    | X |   |   |   |   |   | `:<C-u>Buffers?<CR>`          | Open buffers finder                |
| `<Leader>pf`    | X |   | X |   |   |   | `:<C-u>:Rg<CR>`               | Open grep finder                   |


### FZF

At first use, _FZF_ will search for the `fzf` executable.
If not found, it will prompt for automatic build.

### EasyAlign

_EasyAlign_ allows quick vertical alignment of text.
The main shortcut, `<Leader>a`, works in two modes:
- Visually select a block and enter interactive mode (example: `vip<Leader>a`)
- or call _EasyAlign_ then select the motion to apply on (example: `<Leader>aip`)
