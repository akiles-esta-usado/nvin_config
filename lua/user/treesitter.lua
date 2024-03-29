local status_ok, ts_install = pcall(require, "nvim-treesitter.install")
if not status_ok then
	return
end

ts_install = {
	prefer_git = false,
	compilers = { "gcc" }
}

require 'nvim-treesitter.install'.prefer_git = false
require 'nvim-treesitter.install'.compilers = { "gcc" }


local status_ok, ts_configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

ts_configs.setup({
    ensure_installed = { 
        "lua",
        "python"
    },
    indent = { enable = true },
    -- highlight = { enable = true }
    autopairs = { enable = true } 
})



-- ts_configs.setup({
--   ensure_installed = { 
-- 		"bash",
-- 		"c",
-- 		"javascript",
-- 		"json",
-- 		"lua",
-- 		"python",
-- 		"typescript",
-- 		"yaml",
-- 		"markdown",
-- 		"markdown_inline"
-- 	}, -- one of "all" or a list of languages
-- })
