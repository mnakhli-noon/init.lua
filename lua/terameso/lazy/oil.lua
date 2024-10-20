return {
  "stevearc/oil.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require("oil").setup({
      default_file_expolorer = true,
      columns = {
        "icon",
      },
      use_default_keymaps = false,
      keymaps = {
        ["-"] = "actions.parent",
        ["<CR>"] = "actions.select",
        ["g."] = "actions.toggle_hidden",
      },
    })

  end
}
