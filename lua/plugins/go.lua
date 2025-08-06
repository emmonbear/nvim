return {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
        "ray-x/guihua.lua",
        "neovim/nvim-lspconfig",
        "nvim-treesitter/nvim-treesitter",
    },
    opts = {
        disable_defaults = false,
        remap_commands = {},
        go = "go",
        goimports = "gopls",
        gofmt = "gopls",
        fillstruct = "gopls",
        max_line_len = 0,
        tag_transform = false,
        tag_options = "json=omitempty",
        gotests_template = "",
        gotests_template_dir = "",
        gotest_case_exact_match = true,
        comment_placeholder = "",
        icons = { breakpoint = "🧘", currentpos = "🏃" },
        verbose = false,

        lsp_semantic_highlights = false,
        lsp_cfg = false,
        lsp_gofumpt = true,
        lsp_on_attach = nil,
        lsp_keymaps = true,
        lsp_codelens = true,
        golangci_lint = {
            default = "standard",
            severity = vim.diagnostic.severity.INFO,
        },
        null_ls = {
            golangci_lint = {
                method = { "NULL_LS_DIAGNOSTICS_ON_SAVE", "NULL_LS_DIAGNOSTICS_ON_OPEN" },
                severity = vim.diagnostic.severity.INFO,
            },
            gotest = {
                method = { "NULL_LS_DIAGNOSTICS_ON_SAVE" },
                severity = vim.diagnostic.severity.WARN,
            },
        },
        diagnostic = {
            hdlr = false,
            underline = true,
            virtual_text = { spacing = 2, prefix = "" },
            signs = { "", "", "", "" },
            update_in_insert = false,
        },
        lsp_document_formatting = true,
        lsp_inlay_hints = {
            enable = true,
        },
        gopls_cmd = nil,
        gopls_remote_auto = true,
        gocoverage_sign = "█",
        sign_priority = 5,
        dap_debug = true,
        dap_debug_keymap = true,
        dap_debug_gui = {},
        dap_debug_vt = { enabled = true, enabled_commands = true, all_frames = true },
        dap_port = 38697,
        dap_timeout = 15,
        dap_retries = 20,
        dap_enrich_config = nil,
        build_tags = "tag1,tag2",
        textobjects = true,
        test_runner = "go",
        verbose_tests = true,
        run_in_floaterm = true,
        floaterm = {
            posititon = "auto",
            width = 0.45,
            height = 0.98,
            title_colors = "nord",
        },
        trouble = false,
        test_efm = false,
        luasnip = false,
        on_jobstart = function(cmd) _ = cmd end,
        on_stdout = function(err, data) _, _ = err, data end,
        on_stderr = function(err, data) _, _ = err, data end,
        on_exit = function(code, signal, output) _, _, _ = code, signal, output end,
        iferr_vertical_shift = 4,
        iferr_less_highlight = false,
    },
    config = function(lp, opts)
        require("go").setup(opts)
        local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*.go",
            callback = function()
                require('go.format').goimports()
            end,
            group = format_sync_grp,
        })
    end,
    event = { "CmdlineEnter" },
    ft = { "go", 'gomod' },
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}
