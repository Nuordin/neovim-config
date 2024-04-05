return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    local bufferLine = require("bufferline")
    bufferLine.setup({
      highlights = {
        fill = {
          bg = '#23252e',
        },
      },
    })
    vim.keymap.set('n', '<tab>', vim.cmd.BufferLineCycleNext, {})
    vim.keymap.set('n', '<Leader><tab>', vim.cmd.BufferLineCyclePrev, {})
    vim.keymap.set('n', '<Leader>c', vim.cmd.BufferLinePickClose, {})
    vim.keymap.set('n', '<Leader>1', function() vim.cmd.BufferLineGoToBuffer("1") end, {})
    vim.keymap.set('n', '<Leader>2', function() vim.cmd.BufferLineGoToBuffer("2") end, {})
    vim.keymap.set('n', '<Leader>3', function() vim.cmd.BufferLineGoToBuffer("3") end, {})
    vim.keymap.set('n', '<Leader>4', function() vim.cmd.BufferLineGoToBuffer("4") end, {})
    vim.keymap.set('n', '<Leader>5', function() vim.cmd.BufferLineGoToBuffer("5") end, {})
    vim.keymap.set('n', '<Leader>6', function() vim.cmd.BufferLineGoToBuffer("6") end, {})
    vim.keymap.set('n', '<Leader>7', function() vim.cmd.BufferLineGoToBuffer("7") end, {})
    vim.keymap.set('n', '<Leader>8', function() vim.cmd.BufferLineGoToBuffer("8") end, {})
    vim.keymap.set('n', '<Leader>9', function() vim.cmd.BufferLineGoToBuffer("9") end, {})
  end
}
