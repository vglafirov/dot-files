require("telescope").setup {
  pickers = {
    defaults = {
      path_display = { "smart" },
    },
    find_files = {
      theme = "dropdown",
      hidden = true,
    },
  },
}
