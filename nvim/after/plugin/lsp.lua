local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

-- use tabs for autocompletion
local cmp = require('cmp')

cmp.setup({
    --first item in menu is preselected
    --ipreselect = 'item',
    --completion = {
        --completeopt = 'menu,menuone,noinsert'
    --},
    mapping = {
        ['<Tab>'] = cmp.mapping.confirm({select = true})
    }
})

