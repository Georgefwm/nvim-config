-- return {
--     "iamcco/markdown-preview.nvim",
--     cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--     build = "cd app && yarn install",
--     init = function()
--       vim.g.mkdp_filetypes = { "markdown" }
--     end,

--     -- keys = { "<leader>tg", "<cmd>LazyGit<cr>", desc = "[t]oggle Lazy[g]it" },
--     ft = { "markdown" },
--   }

return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
    keys = {
        { "<leader>tm", "<cmd>MarkdownPreviewToggle<cr>", desc = "[t]oggle [m]arkdown preview" },
    },
	-- config = function()
        
	-- 	vim.keymap.set("n", "<leader>tm", "<cmd>MarkdownPreviewToggle<CR>", { desc = "[t]oggle [m]arkdown preview" })
	-- end,
}
