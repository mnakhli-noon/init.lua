return {
  "projekt0n/github-nvim-theme",
  config = function()
    color = color or "github_dark_high_contrast"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end
}
