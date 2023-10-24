if vim.loader then
    vim.loader.enable()
end

-- https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ
require "user.options"
require "user.plugins"
require "user.colorscheme"
require "user.treesitter"
require "user.lsp"
require "user.telescope"
require "user.vimwiki"



--[[
require "user.keymaps"

require "user.cmp"

-- https://www.youtube.com/watch?v=ZgyVY7tArwg&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ&index=15
require "user.gitsigns"
require "user.autopairs"
require "user.comment"

-- https://www.youtube.com/watch?v=SpexCBrZ1pQ&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ&index=16
require "user.nvim-tree"

-- https://www.youtube.com/watch?v=vJAmjAax2H0
require "user.bufferline"
require "user.lualine"

-- https://www.youtube.com/watch?v=5OD-7h7gzxU&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ&index=19
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.indentline"
require "user.alpha"
require "user.whichkey"
require "user.autocommands"

]]--