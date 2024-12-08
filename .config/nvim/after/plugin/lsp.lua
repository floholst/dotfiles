local lsp_zero = require('lsp-zero')
local util = require('lspconfig.util')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers 
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {"gopls", "lemminx", "pylsp", "lua_ls"},
  handlers = {
    lsp_zero.default_setup,
    require'lspconfig'.pylsp.setup{
      settings = {
        pylsp = {
          plugins = {
            pycodestyle = {
              ignore = {'W391'},
              maxLineLength = 100
            }
          }
        }
      }
    },
    gopls = function()
        require("lspconfig").gopls.setup {
            root_dir = function(fname)
                return util.root_pattern 'go.work' (fname) or util.root_pattern('go.mod', '.git')(fname)
              end,
            }
          end,
  },
})
