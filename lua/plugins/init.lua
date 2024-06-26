local plugins = {

-- Navigation --------------------------------------------------------------------- {{{

  -- buffer + tab line
  {
    "akinsho/bufferline.nvim",
    event = "BufReadPre",
    config = function()
      require "plugins.configs.bufferline"
    end,
  },

  -- Combination of nvim-tree Github and TinyVim:
  {
     "nvim-tree/nvim-tree.lua",
     version = "*",
     lazy = false,
     dependencies = {
       "nvim-tree/nvim-web-devicons",
     },
--     cmd = { "NvimTreeToggle", "NvimTreeFocus" },
     config = function()
       require("nvim-tree").setup {}
     end,
  },

-- }}}	

-- Syntax highlighting, formatting, linting --------------------------------------- {{{

  -- syntax highlighting
--  {
--    "nvim-treesitter/nvim-treesitter",
--    build = ":TSUpdate",
--    config = function()
--      require "plugins.configs.treesitter"
--    end,
--  },

  -- formatting , linting
--  {
--    "stevearc/conform.nvim",
--    lazy = true,
--    config = function()
--      require "plugins.configs.conform"
--    end,
--  },

-- }}}	

-- Language server protocol, snippets, autopairs ---------------------------------- {{{

  -- we use cmp plugin only when in insert mode
  -- so lets lazyload it at InsertEnter event, to know all the events check h-events
  -- completion , now all of these plugins are dependent on cmp, we load them after cmp
--  {
--    "hrsh7th/nvim-cmp",
--    event = "InsertEnter",
--    dependencies = {
--      -- cmp sources
--      "hrsh7th/cmp-buffer",
--      "hrsh7th/cmp-path",
--      "hrsh7th/cmp-nvim-lsp",
--      "saadparwaiz1/cmp_luasnip",
--      "hrsh7th/cmp-nvim-lua",
--
--      -- snippets
--      --list of default snippets
--      "rafamadriz/friendly-snippets",
--
--      -- snippets engine
--      {
--        "L3MON4D3/LuaSnip",
--        config = function()
--          require("luasnip.loaders.from_vscode").lazy_load()
--        end,
--      },
--
--      -- autopairs , autocompletes ()[] etc
--      {
--        "windwp/nvim-autopairs",
--        config = function()
--          require("nvim-autopairs").setup()
--
--          --  cmp integration
--          local cmp_autopairs = require "nvim-autopairs.completion.cmp"
--          local cmp = require "cmp"
--          cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
--        end,
--      },
--    },
--    config = function()
--      require "plugins.configs.cmp"
--    end,
--  },
--
--  {
--    "williamboman/mason.nvim",
--    opts = {
--      ensure_installed = {
--        "lua-language-server",
--        "typescript-language-server",
--        "intelephense",
--        "html-lsp",
--        "pyright",
--      },
--    },
--    build = ":MasonUpdate",
--    cmd = { "Mason", "MasonInstall" },
--    config = function()
--      require("mason").setup()
--    end,
--  },
--
--  {
--    "williamboman/mason-lspconfig.nvim",
--    config = function()
--      require("mason-lspconfig").setup()
--    end,
--  },
--
--  -- lsp
--  {
--    "neovim/nvim-lspconfig",
--    event = { "BufReadPre", "BufNewFile" },
--    config = function()
--      require "plugins.configs.lspconfig"
--    end,
--  },

-- }}}	

-- Various (so far) unused -------------------------------------------------------- {{{

  -- indent lines
--  {
--    "lukas-reineke/indent-blankline.nvim",
--    event = { "BufReadPre", "BufNewFile" },
--    config = function()
--      require("ibl").setup()
--    end,
--  },

  -- files finder etc
--  {
--    "nvim-telescope/telescope.nvim",
--    cmd = "Telescope",
--    config = function()
--      require "plugins.configs.telescope"
--    end,
--  },

--  { lazy = true, "nvim-lua/plenary.nvim" },

  -- git status on signcolumn etc
--  {
--    "lewis6991/gitsigns.nvim",
--    event = { "BufReadPre", "BufNewFile" },
--    config = function()
--      require("gitsigns").setup()
--    end,
--  },
--
  -- comment plugin
--  {
--    "numToStr/Comment.nvim",
--    lazy = true,
--    config = function()
--      require("Comment").setup()
--    end,
--  },

-- }}}	

-- Theming ------------------------------------------------------------------------- {{{

  {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
      require "plugins.configs.tokyonight"
  end,
  },

  {
     'nvim-lualine/lualine.nvim',
      config = function()
        require("lualine").setup {
--          options = { theme = 'pablo' },
        }
      end,
  },

--  {
--    'navarasu/onedark.nvim',
--    config = function()
--      require('onedark').setup {
----        style = 'dark',
----        style = 'darker',
--        style = 'cool',
----        style = 'deep',
----        style = 'warm',
----        style = 'warmer',
--        transparent = true,
--      }
--    end,
--  },

--  {
--    "EdenEast/nightfox.nvim",
--    priority = 1000,
--    config = function()
--      require("nightfox").setup {
--        options = { transparent = true },
--        groups = {
--          all = { VertSplit = { fg = "bg3" } },
--        },
--      }
--    end,
--  },

    -- Installed with nvim-tree, but if needed separately.
  -- icons, for UI related plugins
--  {
--    "nvim-tree/nvim-web-devicons",
--    config = function()
--      require("nvim-web-devicons").setup()
--    end,
--  },

-- }}}	

}

require("lazy").setup(plugins, require "plugins.configs.lazy")
