-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  -- TODO: AQUI IREI COLOCAR TODOS MEUS PLUGINS, EU ACHO:
  ----------------><----------------------------
  --> NOTE: lazygit stuff
  {
    'code-biscuits/nvim-biscuits',
    opts = { cursor_line_only = true },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
  },
  --> NOTE: comfy number stuff
  {
    'mluders/comfy-line-numbers.nvim',
    opts = {
      labels = {
        '1',
        '2',
        '3',
        '4',
        '5',
        '11',
        '12',
        '13',
        '14',
        '15',
        '21',
        '22',
        '23',
        '24',
        '25',
        '31',
        '32',
        '33',
        '34',
        '35',
        '41',
        '42',
        '43',
        '44',
        '45',
        '51',
        '52',
        '53',
        '54',
        '55',
        '111',
        '112',
        '113',
        '114',
        '115',
        '121',
        '122',
        '123',
        '124',
        '125',
        '131',
        '132',
        '133',
        '134',
        '135',
        '141',
        '142',
        '143',
        '144',
        '145',
        '151',
        '152',
        '153',
        '154',
        '155',
        '211',
        '212',
        '213',
        '214',
        '215',
        '221',
        '222',
        '223',
        '224',
        '225',
        '231',
        '232',
        '233',
        '234',
        '235',
        '241',
        '242',
        '243',
        '244',
        '245',
        '251',
        '252',
        '253',
        '254',
        '255',
      },
      up_key = 'k',
      down_key = 'j',

      -- Line numbers will be completely hidden for the following file/buffer types
      hidden_file_types = { 'undotree' },
      hidden_buffer_types = { 'terminal' },
    },
  },
  {
    'kdheepak/lazygit.nvim',
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>g', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },
  --> NOTE: tagbar stuff
  { 'preservim/tagbar' },
  --> NOTE: dropbar stuff
  { 'Bekaboo/dropbar.nvim' },
  --> NOTE: bigfile stuff
  {
    'LunarVim/bigfile.nvim',
    opts = {
      filesize = 5, -- size of the file in MiB, the plugin round file sizes to the closest MiB
      pattern = { '*' }, -- autocmd pattern or function see <### Overriding the detection of big files>
      features = { -- features to disable
        'indent_blankline',
        'illuminate',
        'lsp',
        'treesitter',
        -- 'syntax',
        -- 'matchparen',
        -- 'vimopts',
        'filetype',
      },
    },
  },
  --> NOTE: harpoon stuff
  { 'nvim-lua/plenary.nvim' },
  {
    'ThePrimeagen/harpoon',
    keys = { -- load the plugin only when using it's keybinding:
      { '<leader>mm', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = 'Go to Harpoon list' },
      { '<leader>M', "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = 'Add file to Harpoon' },
      { '<leader>mn', "<cmd>lua require('harpoon.ui').nav_next()  <cr>", desc = 'Go to next Harpoon file' },
      { '<leader>mp', "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = 'Go to previous Harpoon file' },
      { '<leader>1', "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = 'Go to Harpoon[1]' },
      { '<leader>2', "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = 'Go to Harpoon[2]' },
      { '<leader>3', "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = 'Go to Harpoon[3]' },
      { '<leader>4', "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = 'Go to Harpoon[4]' },
      { '<leader>5', "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", desc = 'Go to Harpoon[5]' },
    },
  },
  --> NOTE: mini stuff
  { 'echasnovski/mini.files', version = '*', opts = {} },
  { 'echasnovski/mini.icons', version = false },
  --> NOTE: flash stuff
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
  -- stylua: ignore
  keys = {
    { "<leader>n", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "<leader>N", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "<leader>m", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "<leader>M", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
  },
  --> NOTE: terminal stuff
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {--[[ things you want to change go here]]
    },
  },

  -- -- NOTE: ->dashboard stuff<--
  -- {
  --   'nvimdev/dashboard-nvim',
  --   event = 'VimEnter',
  --   config = function()
  --     require('dashboard').setup {
  --       theme = 'hyper',
  --       config = {
  --         week_header = {
  --           enable = true,
  --         },
  --         shortcut = {
  --           { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
  --           {
  --             icon = ' ',
  --             icon_hl = '@variable',
  --             desc = 'Files',
  --             group = 'Label',
  --             action = 'Telescope find_files',
  --             key = 'f',
  --           },
  --           -- {
  --           --   desc = ' Apps',
  --           --   group = 'DiagnosticHint',
  --           --   action = 'Telescope app',
  --           --   key = 'a',
  --           -- },
  --           -- {
  --           --   desc = ' dotfiles',
  --           --   group = 'Number',
  --           --   action = 'Telescope dotfiles',
  --           --   key = 'd',
  --           -- },
  --         },
  --       },
  --     }
  --   end,
  --   dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  -- },
  -- NOTE:  -->startfy <--
  -- {
  --   'startup-nvim/startup.nvim',
  --   requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  --   config = function()
  --     require('startup').setup { theme = 'startify' }
  --   end,
  -- },
  -- NOTE:  -->undotree <--
  {
    'jiaoshijie/undotree',
    dependencies = 'nvim-lua/plenary.nvim',
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { '<leader>u', "<cmd>lua require('undotree').toggle()<cr>", desc = 'Go to [u]ndo tree' },
    },
  },
  -- NOTE:  -->hlslens <--
  { 'kevinhwang91/nvim-hlslens' },
  -- NOTE:  -->to make nvim transparent <--
  {
    'xiyaowong/transparent.nvim',
    opts = {

      -- Optional, you don't have to run setup.
      groups = { -- table: default groups
        'Normal',
        'NormalNC',
        'Comment',
        'Constant',
        'Special',
        'Identifier',
        'Statement',
        'PreProc',
        'Type',
        'Underlined',
        'Todo',
        'String',
        'Function',
        'Conditional',
        'Repeat',
        'Operator',
        'Structure',
        'LineNr',
        'NonText',
        'SignColumn',
        'CursorLine',
        'CursorLineNr',
        'StatusLine',
        'StatusLineNC',
        'EndOfBuffer',
      },
      extra_groups = {}, -- table: additional groups that should be cleared
      exclude_groups = {}, -- table: groups you don't want to clear
    },
  },
  -- NOTE: --> rose pine colorscheme<--
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    opts = {
      variant = 'auto', -- auto, main, moon, or dawn
      dark_variant = 'main', -- main, moon, or dawn
      dim_inactive_windows = false,
      extend_background_behind_borders = true,

      enable = {
        terminal = true,
        legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
        migrations = true, -- Handle deprecated options automatically
      },

      styles = {
        bold = true,
        italic = true,
        transparency = false,
      },

      groups = {
        border = 'muted',
        link = 'iris',
        panel = 'surface',

        error = 'love',
        hint = 'iris',
        info = 'foam',
        note = 'pine',
        todo = 'rose',
        warn = 'gold',

        git_add = 'foam',
        git_change = 'rose',
        git_delete = 'love',
        git_dirty = 'rose',
        git_ignore = 'muted',
        git_merge = 'iris',
        git_rename = 'pine',
        git_stage = 'iris',
        git_text = 'rose',
        git_untracked = 'subtle',

        h1 = 'iris',
        h2 = 'foam',
        h3 = 'rose',
        h4 = 'gold',
        h5 = 'pine',
        h6 = 'foam',
      },

      highlight_groups = {
        -- Comment = { fg = "foam" },
        -- VertSplit = { fg = "muted", bg = "muted" },
      },

      before_highlight = function(group, highlight, palette)
        -- Disable all undercurls
        -- if highlight.undercurl then
        --     highlight.undercurl = false
        -- end
        --
        -- Change palette colour
        -- if highlight.fg == palette.pine then
        --     highlight.fg = palette.foam
        -- end
      end,
    },
  },
  { 'luisiacc/gruvbox-baby' },
  -- {
  --   'gmr458/vscode_modern_theme.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('vscode_modern').setup {
  --       cursorline = true,
  --       transparent_background = false,
  --       nvim_tree_darker = true,
  --     }
  --     vim.cmd.colorscheme 'vscode_modern'
  --   end,
  -- },
  {
    'nyoom-engineering/oxocarbon.nvim',
    -- Add in any other configuration;
    --   event = foo,
    --   config = bar
    --   end,
  },
  { 'nvim-tree/nvim-tree.lua', opts = {} },
  --> NOTE: telescope file use stuff
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  },
  -- -- NOTE: debug rust stuff
  -- { 'mrcjkb/rustaceanvim' },
  --   {
  --     'glacambre/firenvim',
  --     build = ':call firenvim#install(0)',
  --     opts = {
  --       localSettings = {
  --         ['.*'] = {
  --           takeover = 'never',
  --         },
  --       },
  --       globalSettings = {
  --         alt = 'all',
  --         cmdline = 'neovim',
  --         trigger = '<C-Enter>', -- <- Change this to something Chrome doesn’t intercept
  --       },
  --     },
  --   },
}
