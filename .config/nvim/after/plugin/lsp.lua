local lsp_zero = require('lsp-zero')
local util = require('lspconfig.util')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'pylsp', 'lua_ls'},
  handlers = {
    lsp_zero.default_setup,
    --lua_ls = function()
    --    local lua_opts = lsp_zero.nvim_lua_ls()
    --    require('lspconfig').lua_ls.setup(lua_opts)
    --end,
    gopls = function()
        require("lspconfig").gopls.setup {
            root_dir = function(fname)
                return util.root_pattern 'go.work' (fname) or util.root_pattern('go.mod', '.git')(fname)
              end,
            }
          end,
  },
})

