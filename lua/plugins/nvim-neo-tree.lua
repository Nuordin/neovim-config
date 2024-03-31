return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = {
    vim.keymap.set('n', '<C-f>', ':Neotree filesystem reveal left<CR>', {}),
    event_handlers = {

      {
        event = "file_opened",
        handler = function(file_path)
          -- auto close
          vim.cmd("Neotree close")
          -- OR
          --     require("neo-tree.command").execute({ action = "close" })
        end
      },

    }
  }
}
