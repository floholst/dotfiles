return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
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
                "xml",
                "yaml",
                "zig",
            },
        })
    end
 }
