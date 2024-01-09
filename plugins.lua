local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require "custom.configs.gitsigns"
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "debugloop/telescope-undo.nvim",
    },
    lazy = false,
    config = function()
      require "plugins.configs.telescope"
      require "custom.configs.telescope"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require "plugins.configs.nvimtree"
      require "custom.configs.nvimtree"
    end,
  },
  {
    "notjedi/nvim-rooter.lua",
    config = function()
      require "custom.configs.nvimtree"
    end,
  },
  {
    "git@gitlab.com:gitlab-org/editor-extensions/gitlab.vim.git",
    event = { "BufReadPre", "BufNewFile" }, -- Activate when a file is created/opened
    ft = { "go", "javascript", "python", "ruby" }, -- Activate when a supported filetype is open
    config = function()
      require "custom.configs.gitlab"
    end,
    cond = function()
      return vim.env.GITLAB_TOKEN ~= nil and vim.env.GITLAB_TOKEN ~= "" -- Only activate is token is present in environment variable (remove to use interactive workflow)
    end,
    opts = {
      statusline = {
        enabled = true, -- Hook into the builtin statusline to indicate the status of the GitLab Duo Code Suggestions integration
      },
    },
    lazy = false,
  },
  {
    "coffebar/neovim-project",
    opts = {
      projects = { -- define project roots
        "~/workspace/gitlab/*",
        "~/workspace/gitlab/dedicated/*",
        "~/workspace/gitlab/k8s-workloads/*",
        "~/.config/nvim/",
      },
    },
    init = function()
      -- enable saving the state of plugins in the session
      vim.opt.sessionoptions:append "globals" -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
    end,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
      { "Shatur/neovim-session-manager" },
    },
    lazy = false,
    priority = 100,
  },
  {
    "stevearc/conform.nvim",
    lazy = false,
    config = function()
      require "custom.configs.conform"
    end,
  },
  {
    "chrsm/impulse.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "nvim-telescope/telescope.nvim", -- optional
    },
    lazy = false,
    config = function()
      require "custom.configs.impulse"
    end,
  },
  -- {
  --   "mfussenegger/nvim-dap",
  --   init = function()
  --     require("core.utils").load_mappings "dap"
  --   end,
  -- },
  -- {
  --   "leoluz/nvim-dap-go",
  --   ft = "go",
  --   dependencies = "mfussenegger/nvim-dap",plu
  --   config = function(_, opts)
  --     require("dap-go").setup(opts)
  --     require("core.utils").load_mappings "dap-go"
  --   end,
  -- },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
      require("core.utils").load_mappings "gopher"
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
      require("lsp_signature").setup(opts)
    end,
  },
  {
    "NeogitOrg/neogit",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim", -- optional
      "ibhagwan/fzf-lua", -- optional
    },
    config = true,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    "ThePrimeagen/vim-be-good",
  },
  {
    "AckslD/nvim-neoclip.lua",
    requires = {
      { "nvim-telescope/telescope.nvim" },
      { "ibhagwan/fzf-lua" },
    },
    config = function()
      require("neoclip").setup()
    end,
  },
  --   {
  --     "MunifTanjim/nougat.nvim",
  --   },
}

return plugins
