return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {
                "bash",
                "c",
                "cpp",
                "diff",
                "dockerfile",
                "go",
                "gomod",
                "gosum",
                "gowork",
                "html",
                "java",
                "javascript",
                "jsdoc",
                "json",
                "jsonc",
                "lua",
                "luadoc",
                "luap",
                "markdown",
                "markdown_inline",
                "matlab",
                "python",
                "regex",
                "rust",
                "toml",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
                "yaml",
                "zig",
            },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
 }
