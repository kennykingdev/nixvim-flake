{
    plugins = {
      lspkind = {
        enable = true;
        mode = "symbol_text";
      };
      lsp = {
        enable = true;
        inlayHints = true;
        servers = {
          bashls.enable = true;
          clangd.enable = true;
          cssls.enable = true;
          denols.enable = true;
          dockerls.enable = true;
          docker_compose_language_service.enable = true;
          gopls.enable = true;
          html.enable = true;
          jsonls.enable = true;
          lua_ls.enable = true;
          nil_ls.enable = true;
          pyright.enable = true;
          tailwindcss.enable = true;
          ts_ls.enable = true;
          yamlls.enable = true;
        };

        keymaps = {
          silent = true;
          lspBuf = {
            gd = {
              action = "definition";
              desc = "[G]oto [D]efinition";
            };
            gr = {
              action = "references";
              desc = "[G]oto [R]eferences";
            };
            gD = {
              action = "declaration";
              desc = "[G]oto [D]eclaration";
            };
            gI = {
              action = "implementation";
              desc = "[G]oto [I]mplementation";
            };
            gT = {
              action = "type_definition";
              desc = "[G]oto [T]ype Definition";
            };
            K = {
              action = "hover";
              desc = "Hover";
            };
            "<leader>cw" = {
              action = "workspace_symbol";
              desc = "[C]ode [W]orkspace Symbol";
            };
            "<leader>cr" = {
              action = "rename";
              desc = "[C]ode [R]ename";
            };
          };
          diagnostic = {
            "<leader>cd" = {
              action = "open_float";
              desc = "[C]ode [D]iagnostics";
            };
            "[d" = {
              action = "goto_next";
              desc = "Next [D]iagnostic";
            };
            "]d" = {
              action = "goto_prev";
              desc = "Previous [D]iagnostic";
            };
          };
        };
      };
    };
    extraConfigLua = ''
      local _border = "single"

      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
          border = _border
        }
      )

      vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
        vim.lsp.handlers.signature_help, {
          border = _border
        }
      )

      vim.diagnostic.config{
        float={border=_border}
      };

      require('lspconfig.ui.windows').default_options = {
        border = _border
      }
    '';
}
