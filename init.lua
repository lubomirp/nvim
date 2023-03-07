-----------------
--config neovim--
-----------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {'folke/tokyonight.nvim'},
  {'nvim-lualine/lualine.nvim'},
  {'nvim-treesitter/nvim-treesitter'},
  {'nvim-tree/nvim-tree.lua'};
  {'nvim-telescope/telescope.nvim', tag = '0.1.1',dependencies = { 'nvim-lua/plenary.nvim' }}
})

require('options')
vim.opt.termguicolors = true
vim.cmd.colorscheme('tokyonight')
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
