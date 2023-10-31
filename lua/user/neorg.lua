local status_ok, neorg = pcall(require, "neorg")
if not status_ok then
  echo "Not working"
	return
end

neorg.setup {
  load = {
    ["core.defaults"] = {}, -- Loads default behaviour
    ["core.concealer"] = {
      config = {
        folds = true,
        icon_preset = "diamond",
      }
    }, -- Adds pretty icons to your documents
    ["core.dirman"] = { -- Manages Neorg workspaces
      config = {
        default_workspace = "noc",
        workspaces = {
          notes = "~/notes",
          noc = "E:/Descargas/synopsys/code/NoC-2023/docs/icc2-notes",
          chipathon = "E:/Descargas/chipathon/notes",
        },
        -- open_last_workspace = true
      },
    },
    ["core.esupports.indent"] = {
      config = {
        format_on_enter = true,
        format_on_escape = true,
      }
    },
    ["core.qol.toc"] = {
      config = {
        close_after_use = true,
      }
    },
    ["core.summary"] = {},
    ["core.export"] = {},
    --["core.keybinds"] = {
      --config = {
        --default_keybinds = true,
        --hook = function(keybinds)
         -- keybinds.map("norg", "n", "gtd", "<cmd>echo 'Hello'<CR>")
        --end,
      --}
    --},
  },
}
