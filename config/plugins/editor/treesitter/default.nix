{ pkgs, ... }:

{
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        indent.enable = true;
        highlight.enable = true;
        incremental_selection = {
          enable = true;
          keymaps = {
            init_selection = "<cr>";
            node_incremental = "<cr>";
            node_decremental = "<S-cr>";
          };
        };
      };
      # Enable Nixvim injections, e.g. highlighting 'extraConfigLua' as lua
      nixvimInjections = true;
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    };
  };
}
