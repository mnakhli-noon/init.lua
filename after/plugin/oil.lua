require("oil").setup({
  default_file_expolorer = true,
  columns = {
    "icon",
  },
  use_default_keymaps = false,
  keymaps = {
    ["-"] = "actions.parent",
    ["<CR>"] = "actions.select",

  }
})
