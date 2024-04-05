return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    -- vhyrro/neorg
    "Nuordin/neorg",
    dependencies = { "luarocks.nvim" },
    lazy = false,  -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    run = ':Neorg sync parsers',
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.highlights"] = {},
          ["core.integrations.treesitter"] = {},
          ["core.concealer"] = {
            config = {
              icon_preset = "diamond",
              folds = false,
              icons = {
                code_block = {
                  spell_check = false,
                  highlight = "",
                  conceal = true,
                  padding = {
                    right = "5",
                  },
                  width = "content"
                },
              }
            }
          },
          ["core.dirman"] = {
            config = {
              workspaces = {
                home = "~/Documents/Neorg/home",
                goLang = "~/Documents/Neorg/goLang",
                courses = "~/Documents/Neorg/Courses",
              },
              default_workspace = "home",
            },
          },
        },
      })
      vim.wo.conceallevel = 2
      vim.keymap.set('n', '<leader>ng', ':Neorg<CR>', {})
      vim.keymap.set('n', 'gtd', ':Neorg keybind norg core.qol.todo_items.todo.task_done<CR>', { silent = true })
      vim.keymap.set('n', 'gtu', ':Neorg keybind norg core.qol.todo_items.todo.task_undone<CR>', { silent = true })
      vim.keymap.set('n', 'gtc', ':Neorg keybind norg core.qol.todo_items.todo.task_cycle<CR>', { silent = true })
      vim.keymap.set('n', 'gtp', ':Neorg keybind norg core.qol.todo_items.todo.task_pending<CR>', { silent = true })
      vim.keymap.set('n', 'gth', ':Neorg keybind norg core.qol.todo_items.todo.task_on_hold<CR>', { silent = true })
      vim.keymap.set('n', 'gta', ':Neorg keybind norg core.qol.todo_items.todo.task_ambiguous<CR>', { silent = true })
      vim.keymap.set('n', 'gti', ':Neorg keybind norg core.qol.todo_items.todo.task_important<CR>', { silent = true })
      vim.keymap.set('n', 'gtx', ':Neorg keybind norg core.qol.todo_items.todo.task_cancelled<CR>', { silent = true })
      vim.keymap.set('n', 'gtr', ':Neorg keybind norg core.qol.todo_items.todo.task_recurring<CR>', { silent = true })
    end,
  }
}
