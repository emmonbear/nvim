return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            -- config
            theme = 'hyper',
            config = {
                shortcut = {
                    {
                        desc = '󰊳 Update',
                        group = '@property',
                        action = 'Lazy update',
                        key = 'u',
                    },
                    {
                        desc = ' Files',
                        group = 'Label',
                        action = 'Telescope find_files',
                        key = 'f',
                    },
                    {
                        desc = ' Config',
                        group = 'Number',
                        action = 'edit ~/.config/nvim',
                        key = 'c',
                    },
                },
                packages = { enable = true },
                project = {
                    enable = true,
                    limit = 8,
                    icon = "📁 ",
                    label = "Projects",
                    action = "Telescope find_files cwd=",
                },
                mru = {
                    enable = true,
                    limit = 10,
                    icon = "📄 ",
                    label = "Recent",
                    cwd_only = false,
                },
                --   footer = {
                --     "",
                --     "🎉 Happy hacking with Neovim!",
                --     "",
                --   },
            },
            hide = {
                statusline = true,
                tabline = true,
                winbar = true,
            },
            -- preview = {
            --   command = "cat",
            --   file_path = "~/.config/nvim/lua/plugins/startup/preview.txt",
            --   file_height = 11,
            --   file_width = 70,
            -- },
        }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
