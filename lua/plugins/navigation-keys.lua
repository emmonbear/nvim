return {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
        "TmuxNavigatorProcessList",
    },
    keys = {
        -- normal mode
        { "<C-h>",  "<cmd><C-U>TmuxNavigateLeft<CR>",            mode = "n" },
        { "<C-j>",  "<cmd><C-U>TmuxNavigateDown<CR>",            mode = "n" },
        { "<C-k>",  "<cmd><C-U>TmuxNavigateUp<CR>",              mode = "n" },
        { "<C-l>",  "<cmd><C-U>TmuxNavigateRight<CR>",           mode = "n" },
        { "<C-\\>", "<cmd><C-U>TmuxNavigatePrevious<CR>",        mode = "n" },

        -- terminal mode
        { "<C-\\>", [[<C-\><C-n><cmd>TmuxNavigatePrevious<CR>]], mode = "t" },
    },
}
