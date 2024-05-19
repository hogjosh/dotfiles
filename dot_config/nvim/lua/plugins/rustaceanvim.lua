-- does all the nice rust things
return {
  "mrcjkb/rustaceanvim",
  version = "^4",
  ft = { "rust" },
  opts = {
    -- Plugin configuration
    tools = {},
    -- LSP Configuration
    server = {
      on_attach = function(_, bufnr)
        local opts = { noremap = true, remap = false }
        vim.keymap.set("n", "<leader>e", vim.diagnostic.setloclist, opts)
        vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)

        --vim.keymap.set("n", "", vim.cmd.RustLsp('explainError'), opts)
        --vim.keymap.set("n", "", vim.cmd.RustLsp('renderDiagnostic'), opts)
        --vim.keymap.set("n", "", vim.cmd.RustLsp('parentModule'), opts)
        --vim.keymap.set("n", "", vim.cmd.RustLsp('joinLines'), opts)

        local bufopts = { buffer = bufnr, remap = false }
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
        vim.keymap.set("n", "go", vim.lsp.buf.type_definition, bufopts)
        vim.keymap.set("n", "<leader>vr", vim.lsp.buf.references, bufopts)

        --vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
        vim.keymap.set("n", "K", vim.cmd.RustLsp({ 'hover', 'actions' }), bufopts)
        vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
        vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, bufopts)

        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
        --vim.keymap.set({ "n", "v" }, "<leader>ca", vim.cmd.RustLsp('codeAction'), bufopts)
      end,
      default_settings = {
        -- rust-analyzer language server configuration
        ["rust-analyzer"] = {
          server = {
            extraEnv = { "RUSTUP_TOOLCHAIN=stable" }
          },
          imports = {
            --granularity = {
            --  group = "module",
            --},
            --prefix = "self",
          },
          check = {
            command = "clippy",
            --extraArgs = { "--tests" },
          },
          cargo = {
            buildScripts = {
              enable = true,
            },
          },
          completion = {
            limit = 10,
            postfix = {
              enable = false,
            }
          },
          procMacro = {
            enable = true
          },
          diagnostics = {
            experimental = {
              enable = true,
            },
            styleLints = {
              enable = true,
            }
          },
          inlayHints = {
            renderColons = false,
            maxLength = 15, -- dflt 25
            expressionAdjustmentHints = {
              enable = false,
            },
            bindingModeHints = {
              enable = false,
            },
            closureCaptureHints = {
              enable = false,
            },
            notifications = {
              unindexedProject = true,
            },
          },
          lens = {
            enable = true,
          },
          typing = {
            autoClosingAngleBrackets = {
              enable = true,
            },
          },
        },
      },
    },
  },
  config = function(_, opts)
    vim.g.rustaceanvim = vim.tbl_deep_extend("force", {}, opts or {})
  end,
}
