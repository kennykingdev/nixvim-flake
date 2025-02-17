{
    keymaps = [
      {
        mode = [
          "i"
          "s"
        ];
        key = "<C-k>";
        action.__raw = ''
        function()
          local ls = require "luasnip" 
          if ls.expand_or_jumpable() then
            ls.expand_or_jump()
          end
        end
        '';
      }
      {
        mode = [
          "i"
          "s"
        ];
        key = "<C-j>";
        action.__raw = ''
        function()
          local ls = require "luasnip" 
          if ls.jumpable(-1) then
            ls.jump(-1)
          end
        end
        '';
      }
    ];
    plugins = {
      cmp-nvim-lsp.enable = true;
      cmp-path.enable = true;
      cmp-buffer.enable = true;
      cmp_luasnip.enable = true;
      friendly-snippets.enable = true;

      cmp = {
        enable = true;
        autoEnableSources = true;
        settings = {
          mapping = {
            "<C-d>" = "cmp.mapping.scroll_docs(-4)";
            "<C-f>" = "cmp.mapping.scroll_docs(4)";
            "<C-Space>" = "cmp.mapping.complete()";
            "<C-e>" = "cmp.mapping.close()";
            "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
            "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
            "<CR>" = "cmp.mapping.confirm({ select = false, behavior = cmp.ConfirmBehavior.Replace })";
          };

          preselect = "cmp.PreselectMode.None";

          snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
          # snippet.expand = "luasnip";

          sources = [
            { name = "nvim_lsp"; }
            { name = "path"; }
            { name = "luasnip"; }
            { name = "buffer"; }
          ];


          formatting = {
            fields = [
              "kind"
              "abbr"
              "menu"
            ];
          };

          window = {
            completion = {
              border = "single";
            };
            documentation = {
              border = "single";
            };
          };
        };
      };
    };
}
