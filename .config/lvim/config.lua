-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- lvim.colorscheme = "lunar"
-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = { "*.lua", "*.tf", "*.go", "*.sql" },
  timeout = 1000,
}
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["H"] = ":bprevious<CR>"
lvim.keys.normal_mode["L"] = ":bnext<CR>"
lvim.transparent_window = true
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.treesitter.auto_install = true
lvim.builtin.treesitter.ensure_installed = { "terraform" }
lvim.builtin.telescope.defaults.layout_config.width = 0.9
lvim.builtin.telescope.defaults.path_display = { "truncate" }
lvim.keys.normal_mode["<c-t>"] = false
lvim.builtin.terminal.open_mapping = "<c-t>"
lvim.builtin.terminal.active = true
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "sqlls"
end, lvim.lsp.automatic_configuration.skipped_servers)
-- lvim.format_on_save = true
-- lvim.builtin.telescope.defaults.path_display = function(opts, path)
--   local tail = require("telescope.utils").path_tail(path)
--   return string.format("%s (%s)", tail, path)
-- end
--
--
-- Copilot optional config
-- local has_words_before = function()
--   if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then return false end
--   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
--   return col ~= 0 and vim.api.nvim_buf_get_text(0, line - 1, 0, line - 1, col, {})[1]:match("^%s*$") == nil
-- end
-- local on_tab = vim.schedule_wrap(function(fallback)
--   local cmp = require("cmp")
--   if cmp.visible() and has_words_before() then
--     cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
--   else
--     fallback()
--   end
-- end)
-- lvim.builtin.cmp.mapping["<Tab>"] = on_tab
--
--
--
require("lvim.lsp.manager").setup("cssls", {
  settings = {
    css = {
      validate = true,
      lint = {
        unknownAtRules = "ignore"
      }
    },
    scss = {
      validate = true,
      lint = {
        unknownAtRules = "ignore"
      }
    },
    less = {
      validate = true,
      lint = {
        unknownAtRules = "ignore"
      }
    },
  },
})

require("lvim.lsp.manager").setup("pyright", {
  single_file_support = true,
  settings = {
    pyright = {
      disableLanguageServices = false,
      disableOrganizeImports = false
    },
    python = {
      analysis = {
        autoImportCompletions = true,
        autoSearchPaths = true,
        diagnosticMode = "workspace", -- openFilesOnly, workspace
        typeCheckingMode = "off",     -- off, basic, strict
        useLibraryCodeForTypes = true
      }
    }
  },
})


lvim.plugins = {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    "sustech-data/wildfire.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("wildfire").setup()
    end,
  },
  {
    "dhruvasagar/vim-table-mode",
    event = "VeryLazy",
    -- default toggle with leader + t + m
    -- toggle when needed and untoggle when usused because it can be very slow
  },
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      require("gitblame").setup { enabled = false }
    end,
  },
  -- {
  --   "scottmckendry/cyberdream.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("cyberdream").setup({
  --       -- Recommended - see "Configuring" below for more config options
  --       transparent = true,
  --       italic_comments = true,
  --       hide_fillchars = true,
  --       borderless_telescope = true,
  --     })
  --     vim.cmd("colorscheme cyberdream") -- set the colorscheme
  --   end,
  -- },
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        -- open_mapping = [[<c-t>]],
        open_mapping = [[<c-t>]],
        terminal_mappings = true,
        direction = "horizontal",
        size = 30,
      })
    end
  },
  {
    "David-Kunz/gen.nvim",
    opts = {
      model = "mistral",      -- The default model to use.
      display_mode = "split", -- The display mode. Can be "float" or "split".
      -- show_prompt = false, -- Shows the Prompt submitted to Ollama.
      -- show_model = false, -- Displays which model you are using at the beginning of your chat session.
      no_auto_close = true, -- Never closes the window automatically.
      init = function(options) pcall(io.popen, "ollama serve > /dev/null 2>&1 &") end,
      -- Function to initialize Ollama
      command = "curl --silent --no-buffer -X POST http://localhost:11434/api/generate -d $body",
      -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
      -- This can also be a lua function returning a command string, with options as the input parameter.
      -- The executed command must return a JSON object with { response, context }
      -- (context property is optional).
      -- list_models = '<omitted lua function>', -- Retrieves a list of model names
      debug = true -- Prints errors and the command which is run.
    }
  },
  {
    "echasnovski/mini.align",
    event = "VeryLazy",
    config = function()
      require("mini.align").setup()
    end,
  },
}

table.insert(lvim.plugins, {
  "zbirenbaum/copilot-cmp",
  event = "InsertEnter",
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    vim.defer_fn(function()
      require("copilot").setup({
        panel = {
          enabled = true,
          auto_refresh = false,
          keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>"
          },
          layout = {
            position = "bottom", -- | top | left | right
            ratio = 0.4
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<M-l>",
            accept_word = false,
            accept_line = false,
            next = "<M-k>",
            prev = "<M-j>",
            dismiss = "<C-]>",
          },
        },
        filetypes = {
          yaml = false,
          markdown = false,
          help = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ["."] = false,
        },
        copilot_node_command = 'node', -- Node.js version must be > 18.x
        server_opts_overrides = {},
      })                               -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
      require("copilot_cmp").setup()   -- https://github.com/zbirenbaum/copilot-cmp/blob/master/README.md#configuration
    end, 100)
  end,
})
