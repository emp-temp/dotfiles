vim.g.denops_server_addr = "127.0.0.1:32123"
vim.g["denops#debug"] = 1

local denops_src = "$HOME/.cache/dpp/repos/github.com/vim-denops/denops.vim"
local denops_sharedserver_src = "$HOME/.cache/dpp/repos/github.com/vim-denops/denops-shared-server.vim"

vim.opt.runtimepath:prepend(denops_sharedserver_src)

local dpp_src = "$HOME/.cache/dpp/repos/github.com/Shougo/dpp.vim"
local dpp_ext_installer_src = "$HOME/.cache/dpp/repos/github.com/Shougo/dpp-ext-installer"
local dpp_ext_lazy_src = "$HOME/.cache/dpp/repos/github.com/Shougo/dpp-ext-lazy"
local dpp_ext_toml_src = "$HOME/.cache/dpp/repos/github.com/Shougo/dpp-ext-toml"
local dpp_ext_protocol_src = "$HOME/.cache/dpp/repos/github.com/Shougo/dpp-protocol-git"

vim.opt.runtimepath:prepend(dpp_src)

local dpp = require("dpp")

local dpp_base = "$HOME/.cache/dpp"
if dpp.load_state(dpp_base) then
  vim.opt.runtimepath:prepend(denops_src)
  vim.opt.runtimepath:prepend(dpp_ext_installer_src)
  vim.opt.runtimepath:prepend(dpp_ext_lazy_src)
  vim.opt.runtimepath:prepend(dpp_ext_toml_src)
  vim.opt.runtimepath:prepend(dpp_ext_protocol_src)

  vim.api.nvim_create_autocmd("User", {
    pattern = "DenopsReady",
    callback = function()
      vim.notify("dpp load_state() is failed")
      dpp.make_state(dpp_base, "$HOME/.config/nvim/dpp.ts")
    end,
  })
end

vim.api.nvim_create_autocmd("User", {
  pattern = "Dpp:makeStatePost",
  callback = function()
    vim.notify("dpp make_state() is done")
  end,
})

vim.cmd("filetype indent plugin on")
vim.cmd("syntax on")

