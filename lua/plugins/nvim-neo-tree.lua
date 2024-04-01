---@diagnostic disable: undefined-global
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = {
    vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal left<CR>', {}),
    event_handlers = {
      {
        event = "file_opened",
        handler = function()
          vim.cmd("Neotree close")
        end
      },

    }
  }
}
