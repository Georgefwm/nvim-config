return {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio"
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        dapui.setup()

        dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
        end

        vim.keymap.set("n", "<leader>td", function()
            local launchFileName = "launch.json"
            -- (Re-)reads launch.json if present
            if vim.fn.filereadable(launchFileName) then
                require("dap.ext.vscode").load_launchjs(launchFileName)
            end
            require("dap").continue()
        end, {})

        vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", {})
        vim.keymap.set("n", "<leader>dl", "<cmd>DapStepOver<CR>", {})
        vim.keymap.set("n", "<leader>dk", "<cmd>DapStepOut<CR>", {})
        vim.keymap.set("n", "<leader>dj", "<cmd>DapStepIn<CR>", {})
    end
}
