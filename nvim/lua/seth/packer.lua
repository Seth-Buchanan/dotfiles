vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    use("wbthomason/packer.nvim") -- package installer so it can manage itself

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        -- or                            , branch = '0.1.x',
        requires = { { "nvim-lua/plenary.nvim" } },
    }) -- file fuzzy finder

    use({
        -- 'maxmx03/dracula.nvim', -- alternative Dracula theme
        "Mofiqul/dracula.nvim",    -- official Dracula theme
        as = "dracula",
        config = function()
            vim.cmd("colorscheme dracula")
        end,
    }) -- dracula colorscheme

    
    use({ "shortcuts/no-neck-pain.nvim", tag = "*" }) -- stable version

    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    --Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    -- ^ vim-plug example for translation ^

    use("nvim-treesitter/playground") -- lets you look at TS trees
    use("theprimeagen/harpoon")    -- tab menu
    use("mbbill/undotree")
    use("BurntSushi/ripgrep")    -- telescope requirement
    use("tpope/vim-fugitive")    -- git commands in vim
    use("jose-elias-alvarez/null-ls.nvim")
    use("lervag/vimtex")         -- auto vim compile and show in zathura

    use("/home/seth/projects/lua/arrayify.nvim")
    use("/home/seth/projects/lua/treesitter-unit")
    use("/home/seth/projects/vimscript/typewriter.vim")

    use({
        "AmeerTaweel/todo.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo").setup({
                keywords = {
                    TODO = { icon = "🦾", color = "info" },
                    WARN = { icon = "🚦", color = "warning", alt = { "WARNING" } },
                    NOTE = { icon = "🧾", color = "hint", alt = { "INFO" } },
                },
            })
        end,
    })

    use({  -- change surrounding things but in lua
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    use({ -- adds corresponding brackets, and other surrounding characters
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    }) 

    -- To update plugins, type :w then :so % followed by :PackerSync

    use({
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        },
    })
end)
