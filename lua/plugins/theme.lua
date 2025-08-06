return 
{ 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,

    config = function()
        -- require("catppuccin").setup({
        --     -- flavour = "latte",
        --     color_overrides = {
        --         mocha = {
        --             -- base = "#181825", -- very dark purple
        --             -- mantle = "#181825"
        --             -- base = "#1e1e2e", -- light dark purple
        --             -- mantle = "#1e1e2e"
        --             base = "#1b1f20", -- gray black <- THIS
        --             mantle = "#1b1f20" --           <- THIS
        --             -- base = "#111111",  -- dark blackl
        --             -- mantle = "#111111" -- dark blackl
        --             -- base = "#090d17",
        --             -- mantle = "#090d17"
        --         }
        --     }
        -- })
        vim.cmd.colorscheme "catppuccin"
        end
}
