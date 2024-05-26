vim.cmd.packadd("packer.nvim")

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use { "catppuccin/nvim", as = "catppuccin" }
  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
  use('nvim-treesitter/playground')
  use('nvim-treesitter/nvim-treesitter-context')
  -- harpoon v2
  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { { "nvim-lua/plenary.nvim" } }
  }
  use 'mbbill/undotree'
  use("tpope/vim-fugitive")
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
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
    }
  }

  use("folke/zen-mode.nvim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")
  use("theprimeagen/refactoring.nvim")
  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  })

  -- My Packages
  -- TMUX
  use('christoomey/vim-tmux-navigator')

  -- Autopair
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use { 'bluz71/vim-nightfly-colors', as = 'nightfly' }
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use("github/copilot.vim")
  use { 'nyoom-engineering/oxocarbon.nvim' }
  use({
    "stevearc/oil.nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup()
    end,
  })
end)
