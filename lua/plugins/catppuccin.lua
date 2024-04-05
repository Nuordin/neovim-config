return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      color_overrides = {
        mocha = {
          base = "#23252e",
          mantle = "#1C2028",
        },
      }
    })
 vim.cmd.colorscheme("catppuccin")
  end
}
