return {
  'ThePrimeagen/harpoon',
  lazy = false,
  -- Configure keymaps to make it useful immediately
  config = function()
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    -- The specification word 'mark' means to add the current file to the harpoon list.
    vim.keymap.set('n', '<leader>a', mark.add_file, { desc = 'Harpoon: Mark File' })

    -- The specification word 'ui:toggle_quick_menu' means to open the list of marked files.
    vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = 'Harpoon: Quick Menu' })

    -- Keymaps to jump directly to the first four marked files
    vim.keymap.set('n', '<C-h>', function()
      ui.nav_file(1)
    end, { desc = 'Harpoon: Go to File 1' })
    vim.keymap.set('n', '<C-t>', function()
      ui.nav_file(2)
    end, { desc = 'Harpoon: Go to File 2' })
    vim.keymap.set('n', '<C-n>', function()
      ui.nav_file(3)
    end, { desc = 'Harpoon: Go to File 3' })
    vim.keymap.set('n', '<C-s>', function()
      ui.nav_file(4)
    end, { desc = 'Harpoon: Go to File 4' })
  end,
}
