return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<C-\>]],
      direction = "float",
      float_opts = {
        border = "curved",
        width = 120,
        height = 20,
      },
    })
  end
}
