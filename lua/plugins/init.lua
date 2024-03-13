return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.conform"
    end,
  },

  {
    "mfussenegger/nvim-lint",
    event = {
      "BufReadPre",
      "BufNewFile",
    },
    config = function()
      require "configs.lint"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },

  {
    "zbirenbaum/copilot.lua",
    event = { "InsertEnter" },
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = {
        auto_trigger = true,
      }
    }
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
  },

  {
    "folke/trouble.nvim",
    cmd = { "Trouble", "TroubleToggle", "TodoTrouble" },
    dependencies = {
      {
        "folke/todo-comments.nvim",
        opts = {}
      }
    },
    init = function()
      local map = vim.keymap.set
  
      map("n", "<leader>t", "<CMD>TroubleToggle<CR>", { desc = "Toggle diagnostics" })
      map("n", "<leader>td", "<CMD>TodoTrouble keywords=TODO,FIX,FIXME,BUG,TEST,NOTE<CR>", { desc = "Todo/Fix/Fixme" })
    end,
  },

  {
    "neovim/nvim-lspconfig",
     config = function()
        require("nvchad.configs.lspconfig").defaults()
        require "configs.lspconfig"
     end,
  },
}
