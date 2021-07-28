return require('packer').startup(function()

    use 'wbthomason/packer.nvim'

    -- common
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'

    -- lsp
    use 'neovim/nvim-lspconfig'

    use {
        "hrsh7th/nvim-compe",
        event = "InsertEnter",
        config = function()
            require "plugins.compe"
        end,
        wants = "LuaSnip",
        requires = {
            {
                "L3MON4D3/LuaSnip",
                wants = "friendly-snippets",
                event = "InsertCharPre",
                config = function()
                    local present, luasnip = pcall(require, "luasnip")
                    if not present then
                        return
                    end

                    luasnip.config.set_config(
                        {
                            history = true,
                            updateevents = "TextChanged,TextChangedI"
                        }
                    )
                    require("luasnip/loaders/from_vscode").load()
                end
            },
            {
                "rafamadriz/friendly-snippets",
                event = "InsertCharPre"
            }
        },
    }


    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require("plugins.treesitter")
        end

    }

    use {
        'onsails/lspkind-nvim',
        event = "BufRead",
        config = function()
            require('lspkind').init()
        end
    }

    use 'ray-x/lsp_signature.nvim'

    -- git
    use{  'tpope/vim-fugitive',
        cmd ={ 'Git', 'Glog'}
    }
    use { 'tpope/vim-rhubarb',
        after = "vim-fugitive",
    }


    use {
        'lewis6991/gitsigns.nvim' ,
        event = "BufRead",
        config = function()
            require("plugins.gitsigns")
        end
    }

    use {'tpope/vim-surround',
        event = "BufRead",
    }
    use {'tpope/vim-commentary',
        event = "BufRead",
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        cmd = "Telescope",
        requires = {"kyazdani42/nvim-web-devicons", {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}},
        config = function()
            require("plugins.telescope")
        end
    }

    use { 'ggandor/lightspeed.nvim' ,
        event = "BufRead",
        config = function()
            require'lightspeed'.setup {
                jump_to_first_match = true,
                jump_on_partial_input_safety_timeout = 400,
                highlight_unique_chars = false,
                grey_out_search_area = true,
                match_only_the_start_of_same_char_seqs = true,
                limit_ft_matches = 5,
                full_inclusive_prefix_key = '<c-x>',
            }
        end
    }

    use {
        'windwp/nvim-autopairs',
        after = "nvim-compe",
        config = function()
            require('nvim-autopairs').setup()
        end
    }
    use {  'windwp/nvim-ts-autotag',
        event = "BufRead",
        after ="nvim-treesitter",
        config = function()
            require('nvim-ts-autotag').setup()
        end
    }
    use{  'kyazdani42/nvim-tree.lua' ,
        keys='<leader>e',
        config = function()
            local tree_cb = require'nvim-tree.config'.nvim_tree_callback

            vim.g.nvim_tree_window_picker_chars ='asdfjkl'
            vim.g.nvim_tree_width = 55
            vim.g.nvim_tree_indent_markers = 1

            vim.g.nvim_tree_bindings = {
                { key = "<C-g>",    cb = tree_cb("cd") },
            }

            vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
            vim.api.nvim_set_keymap('n', '<Leader>n', ':NvimTreeFindFile<CR>', {noremap = true, silent = true})


        end
    }

    use { 'norcalli/nvim-colorizer.lua',
        cmd = "ColorizerToggle",
        config = function()
            require'colorizer'.setup(
                {'*';},
                {
                    RGB      = true;         -- #RGB hex codes --blue
                    RRGGBB   = true;         -- #RRGGBB hex codes
                    RRGGBBAA = true;         -- #RRGGBBAA hex codes
                    rgb_fn   = true;         -- CSS rgb() and rgba() functions
                    hsl_fn   = true;         -- CSS hsl() and hsla() functions
                    css      = true;         -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
                    css_fn   = true;         -- Enable all CSS *functions*: rgb_fn, hsl_fn
                })
        end
    }
    use{ 'kevinhwang91/nvim-bqf',
        event = "BufRead" }

    use { 'numToStr/Navigator.nvim' ,
        event = "BufRead",
        config = function()
            require('Navigator').setup({
                auto_save = 'current',
                disable_on_zoom = true
            })
            local map = vim.api.nvim_set_keymap
            local opts = { noremap = true, silent = true }

            map('n', "<C-h>", "<CMD>lua require('Navigator').left()<CR>", opts)
            map('n', "<C-k>", "<CMD>lua require('Navigator').up()<CR>", opts)
            map('n', "<C-l>", "<CMD>lua require('Navigator').right()<CR>", opts)
            map('n', "<C-j>", "<CMD>lua require('Navigator').down()<CR>", opts)
        end
    }

    use {
        'kshenoy/vim-signature',
        event = "BufRead",
    }

    -- tools
    use{ 'windwp/nvim-spectre',
        keys = '<leader>s',
        config = function()
            require('spectre').setup()
            vim.api.nvim_set_keymap('n', '<Leader>s',  [[<Cmd>lua require('spectre').open()<CR>]], { noremap = true, silent = true })
        end
    }

    use {
        "mbbill/undotree",
        cmd = "UndotreeToggle",
        keys = "<leader>u",
        config = function()
            vim.api.nvim_set_keymap("n", "<leader>u", ":UndotreeToggle<CR>",  {silent = true, noremap = true})
            vim.g.undotree_WindowLayout = 2
            vim.g.undotree_SplitWidth = 50
        end,
    }

    use {'ThePrimeagen/harpoon',
        keys = { '<leader>h','<leader>a','<leader>1', '<leader>2' ,'<leader>3' ,'<leader>4' ,'<leader>5'  },
        config = function()
            require('harpoon').setup {
                menu = {
                    width = 80,
                    height = 8,
                }
            }
            vim.api.nvim_set_keymap('n', '<leader>h',  [[<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>]], { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>a',  [[<Cmd>lua require("harpoon.mark").add_file()<CR>]], { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>1',  [[<Cmd>lua require("harpoon.ui").nav_file(1)<CR>]], { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>2',  [[<Cmd>lua require("harpoon.ui").nav_file(2)<CR>]], { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>3',  [[<Cmd>lua require("harpoon.ui").nav_file(3)<CR>]], { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>4',  [[<Cmd>lua require("harpoon.ui").nav_file(4)<CR>]], { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>5',  [[<Cmd>lua require("harpoon.ui").nav_file(4)<CR>]], { noremap = true, silent = true })
        end
    }

    use {'folke/zen-mode.nvim',
        keys=';z',
        config = function()
            require("zen-mode").setup {
                window = {
                    height = 0.9
                }
            }
            vim.api.nvim_set_keymap('n', ';z', ':ZenMode<CR>', {noremap = true, silent = true})
        end
    }

    use {'kevinhwang91/nvim-hlslens',
        event = "BufRead",
    }

end)
