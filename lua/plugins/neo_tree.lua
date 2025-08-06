return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
        's1n7ax/nvim-window-picker',
    },
    lazy = false,
    config = function()
        require("neo-tree").setup({
            window = {
                mappings = {
                    ["l"] = "open_with_window_picker",
                    ["Z"] = "expand_all_subnodes",
                },
            },

            window_picker = {
                enabled = true,
                picker = require("window-picker").pick_window,
                chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
                exclude = {
                    filetype = { "neo-tree", "notify", "quickfix" },
                    buftype = { "terminal", "nofile" },
                },
            },
        })
    end
}
