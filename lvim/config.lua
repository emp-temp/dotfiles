lvim.colorscheme = "catppuccin-frappe"

vim.opt.clipboard = "unnamedplus"

lvim.plugins = {
  { "ellisonleao/gruvbox.nvim" },
  { "Rigellute/shades-of-purple.vim" },
  { "catppuccin/nvim" },
  { "github/copilot.vim" },
  { "kdheepak/lazygit.nvim" },
  { "tpope/vim-fugitive" },
  { "gotchane/vim-git-commit-prefix" },
  { "folke/trouble.nvim" }
}

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "prettierd" },
  { name = "goimports" },
  { name = "ruff" }
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { name = "eslint_d" },
  { name = "staticcheck" },
  { name = "ruff" }
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {}

lvim.format_on_save = true
