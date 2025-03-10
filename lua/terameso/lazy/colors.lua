return {
"rose-pine/neovim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd.colorscheme 'rose-pine'
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end
}
--[[
--
  "folke/tokyonight.nvim",
  "Yazeed1s/oh-lucy.nvim",
  "projekt0n/github-nvim-theme",
  'maxmx03/fluoromachine.nvim',
  "dgox16/oldworld.nvim",
  "melow-theme/mellow.nvim",
--]]
