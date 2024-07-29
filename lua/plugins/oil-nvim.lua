return {
	"stevearc/oil.nvim",
    event = { "VimEnter */*,.*", "BufNew */*,.*" },
	opts = {
        default_file_explorer = true,
		view_options = {
			show_hidden = true,
		},
		float = {
			-- Padding around the floating window
			padding = 4,
            max_height = 80,
            max_width = 80,
			border = "single",
			win_options = {
				winblend = 0,
			},
		},
	},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	keys = {
		{ "<leader>tf", function() require('oil').open_float('.') end, desc = "[t]oggle [f]iles" },
		{ "<leader>tw", "actions.open_float", desc = "[t]oggle [f]loat" },

		-- keymaps = {
		-- 	["g?"] = "actions.show_help",
		-- 	["<CR>"] = "actions.select",
		-- 	["<C-s>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
		-- 	["<C-h>"] = {
		-- 		"actions.select",
		-- 		opts = { horizontal = true },
		-- 		desc = "Open the entry in a horizontal split",
		-- 	},
		-- 	["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },
		-- 	["<C-p>"] = "actions.preview",
		-- 	["<C-c>"] = "actions.close",
		-- 	["<C-l>"] = "actions.refresh",
		-- 	["-"] = "actions.parent",
		-- 	["_"] = "actions.open_cwd",
		-- 	["`"] = "actions.cd",
		-- 	["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory" },
		-- 	["gs"] = "actions.change_sort",
		-- 	["gx"] = "actions.open_external",
		-- 	["g."] = "actions.toggle_hidden",
		-- 	["g\\"] = "actions.toggle_trash",
		-- },
	},
}
