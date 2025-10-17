return {
  -- Installs the necessary Dart/Flutter support
  {
    'williamboman/mason.nvim',
    opts = function(_, opts)
      -- Ensure Dart LSP is managed by Mason, but we will configure it manually.
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { 'dart-lsp', 'flutter-tools' })
    end,
  },

  {
    'akinsho/flutter-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- Optional for better input UI
    },
    ft = 'dart', -- Only load this plugin for dart files
    config = function()
      require('flutter-tools').setup {
        lsp = {
          enabled = false, -- <--- SET TO FALSE
        },

        -- Configuration options here for tools only
        widget_guides = {
          enabled = true,
        },

        -- Optional: Keymaps for flutter-tools
        keymaps = {
          -- Basic commands
          open_sim = '<leader>fs',
          run_flutter_test = '<leader>ft',
          flutter_term = '<leader>fg',
        },
      }
    end,
  },
}
