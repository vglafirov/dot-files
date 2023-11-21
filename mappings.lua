local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
      ["<C-o>"] = ""
  }
}

M.general = {
  n = {
    [","] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>gi"] = { ":Neogit kind=split <CR>", "Open Neogit" },
    ["<leader>fp"] = { ":Telescope projects <CR>", "Open projects" },
  },
}

return M
