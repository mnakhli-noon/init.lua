return {
  "folke/trouble.nvim",
  cmd = "Trouble",
  keys = {
    {
      "<leader>tt",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
  },
  config = function()
    require("trouble").setup()

    vim.keymap.set("n", "[t", function()
      require("trouble").next({ skip_groups = true, jump = true });
    end)

    vim.keymap.set("n", "]t", function()
      require("trouble").prev({ skip_groups = true, jump = true });
    end)
  end
}
