return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ -- If encountering errors, see telescope-fzf-native README for installation instructions
			"nvim-telescope/telescope-fzf-native.nvim",

			-- `build` is used to run some command when the plugin is installed/updated.
			-- This is only run then, not every time Neovim starts up.
			build = "make",

			-- `cond` is a condition used to determine whether this plugin should be
			-- installed and loaded.
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		{ "nvim-telescope/telescope-ui-select.nvim" },

		-- Useful for getting pretty icons. Requires a Nerd Font.
		{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
	},
	-- opts = {
	-- 	defaults = {
	-- 		borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
	-- 	},
	-- },
	config = function()
		-- Two important keymaps to use while in Telescope are:
		--  - Insert mode: <c-/>
		--  - Normal mode: ?
		--
		-- This opens a window that shows you all of the keymaps for the current
		-- Telescope picker. This is really useful to discover what Telescope can
		-- do as well as how to actually do it!

		-- [[ Configure Telescope ]]
		-- See `:help telescope` and `:help telescope.setup()`
		require("telescope").setup({
			-- You can put your default mappings / updates / etc. in here
			--  All the info you're looking for is in `:help telescope.setup()`
			--
			-- defaults = {
			--   mappings = {
			--     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
			--   },
			-- },
			-- pickers = {}
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})

		-- Enable Telescope extensions if they are installed
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")

		-- See `:help telescope.builtin`
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[f]ind [h]elp" })
		vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "[f]ind [k]eymaps" })
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[f]ind [f]iles" })
		vim.keymap.set("n", "<leader>fs", builtin.builtin, { desc = "[f]ind [s]elect Telescope" })
		vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "[f]ind current [w]ord" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[f]ind with [g]rep" })
		vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[f]ind [d]iagnostics" })
		vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "[f]ind [r]esume" })
		vim.keymap.set("n", "<leader>f.", builtin.oldfiles, { desc = "[f]ind Recent Files (\".\" for repeat)" })

		-- Start buffer list in normal mode
		vim.keymap.set("n", "<leader>b", "<cmd>Telescope buffers initial_mode=normal<CR>", { desc = "[b]uffers" })

		-- Slightly advanced example of overriding default behavior and theme
		vim.keymap.set("n", "<leader>/", function()
			-- You can pass additional configuration to Telescope to change the theme, layout, etc.
			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
				winblend = 10,
				previewer = false,
			}))
		end, { desc = "[/] fuzzy search in current buffer" })

		-- It's also possible to pass additional configuration options.
		--  See `:help telescope.builtin.live_grep()` for information about particular keys
		vim.keymap.set("n", "<leader>fo", function()
			builtin.live_grep({
				grep_open_files = true,
				prompt_title = "Live Grep in Open Files",
			})
		end, { desc = "[f]ind in [o]pen files" })

		-- Shortcut for searching your Neovim configuration files
		vim.keymap.set("n", "<leader>fn", function()
			builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "[f]ind [n]vim (config) files" })
	end,
}
