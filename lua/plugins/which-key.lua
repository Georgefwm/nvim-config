-- TODO: replace config call with opts
return {
    "folke/which-key.nvim",
    config = function()
        local wk = require("which-key")

        wk.add({
            { "<leader>l", group = "[l]sp (code)" },
            -- { "<leader>d", group = "[D]ocument" },
            -- { "<leader>r", group = "[R]ename" },
            { "<leader>f", group = "[f]ind" },
            -- { "<leader>w", group = "[W]orkspace" },
            { "<leader>t", group = "[t]oggle" },
            { "<leader>h", group = "[g]it", mode = { "n", "v" } },
        })
    end,
}