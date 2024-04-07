lvim.colorscheme = "gruvbox"

vim.opt.clipboard = "unnamedplus"

lvim.plugins = {
  { "ellisonleao/gruvbox.nvim" },
  { "github/copilot.vim" },
  { "kdheepak/lazygit.nvim" },
  { "tpope/vim-fugitive" }
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
