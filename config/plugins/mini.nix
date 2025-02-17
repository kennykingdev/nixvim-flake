{
  keymaps = [
    {
      mode = "n";
      key = "\\";
      action.__raw = "
        function()
          if not MiniFiles.close() then
            MiniFiles.open()
          end
        end";
      options.desc = "Mini-Files";
    }
  ];

  plugins.mini = {
    enable = true;
    mockDevIcons = true;
    modules = {
      ai = {};
      hipatterns = {};
      icons = {};
      files = {
        mappings = {
          show_help = "?";
        };
        windows = {
          preview = true;
          width_preview = 50;
        };
      };
    };
  };
}
