# Personal VIM environment

This repository is a vim package that holds and configures all plugins
I personnally use in vim.
I mainly use vim as a Rust IDE, which oriented my choices of plugins and
settings.

The following plugin are available:

- [FZF](https://github.com/junegunn/fzf): Fuzzy Finder for quick file search.
- [FZF.vim](https://github.com/junegunn/fzf.vim): _FZF_ enhancements
- [NERDTree](https://github.com/preservim/nerdtree): File explorer
- [ALE](https://github.com/dense-analysis/ale): Linter on top of _RLS_ (with _Rust Analyzer_)
- [Rust.vim](https://github.com/rust-lang/rust.vim): Provides Rust files detection, syntax, formatting, and more.
- [vim-airline](https://github.com/vim-airline/vim-airline): Status bar displaying useful informations

## Prerequisite

My configuration file has a few prerequisites:

- [ripgrep](https://github.com/BurntSushi/ripgrep): _FZF_ uses it
- [Rust Analyzer](https://github.com/rust-analyzer/rust-analyzer): Rust
  compiler front end (RLS protocol)
- [Powerline fonts](https://github.com/powerline/fonts): Used by vim-airline


Arch Linux:
```
pacman -S ripgrep rust-analyzer powerline-fonts
```
Ubuntu:
```
apt install fonts-powerline ripgrep
snap install --edge rust-analyzer
```

## Installation

With Vim 8.0 or later, go to `~/.vim` and clone the repository along with
submodules:

```
mkdir -p ~/.vim
cd ~/.vim
git clone --recurse-submodules https://github.com/OragonEfreet/vimpack.git
```

## Usage


### Shortcuts

|      Shortcut |           Command |                      Description |
|---------------|-------------------|----------------------------------|
| `<C-p>`       |              :FZF |                         Runs FZF |
| `<Leader>k`   |   :NERDTreeToggle |     Open/Close the file explorer |
| `<Leader>cc`  |           :Ccheck |     Run `cargo check` |
| `<Leader>cb`  |           :Cbuild |     Run `cargo build` |
| `<Leader>ct`  |            :Ctest |     Run `cargo test` |

### FZF

At first use, _FZF_ will search for the `fzf` executable.
If not found, it will prompt for automatic build.

### NERDTree

The file explorer automatically opens when vim started on a folder.
Otherwise, use `<Leader>k` to open or close it.
