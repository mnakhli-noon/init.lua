local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=v11.14.0", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = "terameso.lazy",
  change_detection = {notify = false}
})
--[[
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  'nvim-treesitter/playground',
  'nvim-treesitter/nvim-treesitter-context',
  -- harpoon v2
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
  },
  'mbbill/undotree',
  "tpope/vim-fugitive",
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {
        'neovim/nvim-lspconfig',
        tag = "v0.1.9"
      }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    },
  },

  "folke/zen-mode.nvim",
  "laytan/cloak.nvim",
  {
    "folke/trouble.nvim",
    version = "v2.10.0",
    config = function()
      require("trouble").setup {
        icons = false,
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  },

  -- My Packages
  -- TMUX
  'christoomey/vim-tmux-navigator',

  -- Autopair
  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },

  "github/copilot.vim",
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup()
    end,
  }
  "sQVe/sort.nvim",
  "projekt0n/github-nvim-theme",
}, {

})
]]
