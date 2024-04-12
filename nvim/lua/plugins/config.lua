return {
  -- {
  --   "github/copilot.vim",
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_default",
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
  },
  {
    "echasnovski/mini.indentscope",
    enabled = false,
  },
  {
    "navarasu/onedark.nvim",
  },
  {
    "talha-akram/noctis.nvim",
  },
  {
    "akinsho/toggleterm.nvim",
    keys = { { "<F4>", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" } },
    opts = {
      open_mapping = [[<F4>]],
      direction = "horizontal",
      shade_filetypes = {},
      hide_numbers = true,
      insert_mappings = true,
      terminal_mappings = true,
      start_in_insert = true,
      close_on_exit = true,
    },
  },
  {
    "aserebryakov/vim-todo-lists",
    lazy = false,
  },
  {
    "projekt0n/github-nvim-theme",
  },
}
