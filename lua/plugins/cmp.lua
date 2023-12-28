return {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets',
    },
    config = function()
        local cmp = require('cmp')
        
        cmp.setup({
            completion = {
                completeopt = "menu,menuone,preview,noselect",
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                -- Toggles the autocomplete menu
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-k>"] = cmp.mapping.select_prev_item(),
                ["<C-j>"] = cmp.mapping.select_next_item(),
                -- ['<C-j>'] = cmp_action.luasnip_jump_forward(),
                -- ['<C-k>'] = cmp_action.luasnip_jump_backward(),
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<CR>"]  = cmp.mapping.confirm({ select = false }),
            }),
            sources = cmp.config.sources({
                { name = "luasnip" }, -- snippets
                { name = "buffer" },  -- Text within current buffer
                { name = "path" },    -- File System paths
            }),
        })
    end
}
