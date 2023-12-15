require("telescope").setup {
  pickers = {
    defaults = {
      path_display = { "smart" },
    },
    find_files = {
      -- theme = "dropdown",
      hidden = true,
    },
  },
  extensions = {
    project = {
      base_dirs = {
        "~/workspace/",
      },
      hidden_files = true, -- default: false
      -- theme = "dropdown",
      order_by = "asc",
      search_by = "title",
      sync_with_nvim_tree = true, -- default false
      display_type = "full",
    },
  },
}
