return {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    enabled = false,
    dependencies = {
        "williamboman/mason.nvim",
        "mfussenegger/nvim-dap",
    },
    opts = {
        handlers = {
            function(config)
                -- all sources with no handler get passed here

                -- Keep original functionality
                require('mason-nvim-dap').default_setup(config)
            end,
            codelldb = function(config)
                config.configurations = {
                    name = "codelldb base config",
                    type = "codelldb",
                    request = "launch",
                    program = function()
                        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                    end,
                    cwd = "${workspaceFolder}",
                    showDissasembly = "never",
                    stopOnEntry = false,
                    args = {},
                    console = "integratedTerminal",
                }
                config.adapters = {
                    type = "executable",
                    command = "codelldb", -- or if not in $PATH: "/absolute/path/to/codelldb"

                    -- On windows you may have to uncomment this:
                    -- detached = false,
                }
                require('mason-nvim-dap').default_setup(config) -- don't forget this!
            end,

        },
        ensure_installed = {
            "codelldb"
        }
    }
}
