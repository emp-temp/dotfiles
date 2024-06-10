" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set dpp base path (required)
const s:dpp_base = '~/.cache/dpp/'


" Set dpp source path (required)
" NOTE: The plugins must be cloned before.
const s:dpp_src = '~/.cache/dpp/repos/github.com/Shougo/dpp.vim'
const s:denops_src = '~/.cache/dpp/repos/github.com/vim-denops/denops.vim'
const s:denops_sharedserver_src = '~/.cache/dpp/repos/github.com/vim-denops/denops-shared-server.vim'

const s:denops_installer = '~/.cache/dpp/repos/github.com/Shougo/dpp-ext-installer'
const s:denops_lazy = '~/.cache/dpp/repos/github.com/Shougo/dpp-ext-lazy'
const s:denops_toml = '~/.cache/dpp/repos/github.com/Shougo/dpp-ext-toml'
const s:denops_git = '~/.cache/dpp/repos/github.com/Shougo/dpp-protocol-git'

let g:denops_server_addr = '127.0.0.1:32123'
execute 'set runtimepath^=' .. g:denops_server_addr

" Set dpp runtime path (required)
execute 'set runtimepath^=' .. s:dpp_src

if s:dpp_base->dpp#min#load_state()
  " NOTE: dpp#make_state() requires denops.vim
  " NOTE: denops.vim and dpp plugins are must be added
  execute 'set runtimepath^=' .. s:denops_src
  execute 'set runtimepath^=' .. s:denops_installer
  execute 'set runtimepath^=' .. s:denops_lazy
  execute 'set runtimepath^=' .. s:denops_toml
  execute 'set runtimepath^=' .. s:denops_git

  autocmd User DenopsReady
  \ : echohl WarningMsg
  \ | echomsg 'dpp load_state() is failed'
  \ | echohl NONE
  \ | call dpp#make_state(s:dpp_base, '~/dotfiles/dpp.ts')
endif

autocmd User Dpp:makeStatePost
      \ : echohl WarningMsg
      \ | echomsg 'dpp make_state() is done'
      \ | echohl NONE

filetype indent plugin on

" Enable syntax highlighting
if has('syntax')
  syntax on
endif
