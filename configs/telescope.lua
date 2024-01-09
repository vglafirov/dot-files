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
  extensions = {
    terms = {},
    undo = {
      side_by_side = true,
      layout_strategy = "vertical",
      layout_config = {
        preview_height = 0.8,
      },
    },
  },
}

require("telescope").load_extension "terms"
require("telescope").load_extension "undo"
require("telescope").load_extension "neoclip"
