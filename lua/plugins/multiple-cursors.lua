return {
    "brenton-leighton/multiple-cursors.nvim",
    version = "v0.13",
    event = "VimEnter",
    opts = {
        custom_key_maps = {
            { "n", "<Leader>|", function() require("multiple-cursors").align() end },
        },
    },
    keys = {
        { "<C-S-j>",   "<Cmd>MultipleCursorsAddDown<CR>",          mode = { "n", "x" }, desc = "Add cursor and move down" },
        { "<C-S-k>",   "<Cmd>MultipleCursorsAddUp<CR>",            mode = { "n", "x" }, desc = "Add cursor and move up" },

        -- { "<C-Up>",        "<Cmd>MultipleCursorsAddUp<CR>",            mode = { "n", "i", "x" }, desc = "Add cursor and move up" },
        -- { "<C-Down>",      "<Cmd>MultipleCursorsAddDown<CR>",          mode = { "n", "i", "x" }, desc = "Add cursor and move down" },

        -- All my homies hate the mouse
        -- { "<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>",   mode = { "n", "i" }, desc = "Add or remove cursor" },

        { "<Leader>a", "<Cmd>MultipleCursorsAddMatches<CR>",       mode = { "n", "x" }, desc = "Add cursors to cword" },
        { "<Leader>A", "<Cmd>MultipleCursorsAddMatchesV<CR>",      mode = { "n", "x" }, desc = "Add cursors to cword in previous area" },

        { "<Leader>d", "<Cmd>MultipleCursorsAddJumpNextMatch<CR>", mode = { "n", "x" }, desc = "Add cursor and jump to next cword" },
        { "<Leader>D", "<Cmd>MultipleCursorsJumpNextMatch<CR>",    mode = { "n", "x" }, desc = "Jump to next cword" },

        { "<Leader>l", "<Cmd>MultipleCursorsLock<CR>",             mode = { "n", "x" }, desc = "Lock virtual cursors" },
    }
}
