return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- load on startup
    priority = 1000, -- make sure colorscheme loads first
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = false,
        term_colors = true,
        integrations = {
          treesitter = true,
          telescope = true,
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          -- add more if needed
        },
      })
      vim.cmd("colorscheme catppuccin")
    end,
  },
}
