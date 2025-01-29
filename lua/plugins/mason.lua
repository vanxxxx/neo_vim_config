-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "standard",
                reportUnknownArgumentType = "none",
                reportUnknownParameterType = "none",
                reportUnknownMemberType = "none",
                allowedUntypedLibraries = {"library", "module.submodule"},
              },
            },
          },
        },
        pyright = {
          settings = {
            pyright = {
              analysis = {
                reportUnknownArgumentType = "none",
                reportUnknownParameterType = "none",
                reportUnknownMemberType = "none",
              },
            },
          },
        },
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "python",
        -- add more arguments for adding more debuggers
      },
    },
  },
}
