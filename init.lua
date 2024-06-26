-----------------
--config neovim--
-----------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {'ellisonleao/gruvbox.nvim'},
  {'ojroques/nvim-osc52'},
  {'nvim-lualine/lualine.nvim'},
  {'nvim-treesitter/nvim-treesitter'},
  {'nvim-tree/nvim-tree.lua'};
  {'nvim-telescope/telescope.nvim', tag = '0.1.6',dependencies = { 'nvim-lua/plenary.nvim' }}
})

vim.opt.termguicolors = true
vim.cmd.colorscheme('gruvbox')
require('lualine').setup({
  options = {
    icons_enabled = true,
  }
})

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require('options')
require('keybindings')
