local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<C-o>"] = "",
  },
}

M.general = {
  n = {
    [","] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>gi"] = { ":Neogit kind=split <CR>", "Open Neogit" },
  },
}

M.telescope = {
  plugin = true,

  n = {
    ["<leader>fg"] = { "<cmd> Telescope git_files <CR>", "Git files" },
    ["<leader>fp"] = { ":Telescope neovim-project discover <CR>", "Open projects" },
    ["<leader>u"] = { ":Telescope undo <CR>", "Open undo history" },
    ["<leader>cc"] = { ":Telescope neoclip a extra=star,plus,b <CR>", "Open clip manager" },
  },
}

-- M.dap = {
--   plugin = true,
--   n = {
--     ["<leader>db"] = {
--       "<cmd> DapToggleBreakpoint <CR>",
--       "Add breakpoint at line",
--     },
--     ["<leader>dus"] = {
--       function()
--         local widgets = require "dap.ui.widgets"
--         local sidebar = widgets.sidebar(widgets.scopes)
--         sidebar.open()
--       end,
--       "Open debugging sidebar",
--     },
--   },
-- }
--
-- M.dap_go = {
--   plugin = true,
--   n = {
--     ["<leader>dgt"] = {
--       function()
--         require("dap-go").debug_test()
--       end,
--       "Debug go test",
--     },
--     ["<leader>dgl"] = {
--       function()
--         require("dap-go").debug_last()
--       end,
--       "Debug last go test",
--     },
--   },
-- }
--
M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags",
    },
  },
}

return M
