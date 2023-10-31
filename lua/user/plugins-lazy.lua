local fn = vim.fn

-- Automatically install lazy
local install_path = fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(install_path) then
  fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    install_path,
  })

end
vim.opt.rtp:prepend(install_path)

require("lazy").setup({
  "folke/tokyonight.nvim",
  "nvim-lua/plenary.nvim",
  "kyazdani42/nvim-web-devicons",
  "kyazdani42/nvim-tree.lua",
  "akinsho/bufferline.nvim",
  "nvim-lualine/lualine.nvim",
  "akinsho/toggleterm.nvim",
  "neovim/nvim-lspconfig",
  "nvim-telescope/telescope.nvim",
  'vimwiki/vimwiki',
  { 
    'nvim-treesitter/nvim-treesitter',
    cmd = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
		end,
  },
})