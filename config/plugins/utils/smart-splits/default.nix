{
    plugins.smart-splits = {
      enable = true;
      settings = {
        resize_mode = {
          quit_key = "<ESC>";
          resize_keys = [
            "h"
            "j"
            "k"
            "l"
          ];
        };
      };
    };
    keymaps = [
      {
        mode = "n";
        key = "<C-h>";
        action = ":lua require('smart-splits').move_cursor_left()<CR>";
        options.silent = true;
      }
      {
        mode = "n";
        key = "<C-j>";
        action = ":lua require('smart-splits').move_cursor_down()<CR>";
        options.silent = true;
      }
      {
        mode = "n";
        key = "<C-k>";
        action = ":lua require('smart-splits').move_cursor_up()<CR>";
        options.silent = true;
      }
      {
        mode = "n";
        key = "<C-l>";
        action = ":lua require('smart-splits').move_cursor_right()<CR>";
        options.silent = true;
      }
      {
        mode = "n";
        key = "<leader>wr";
        action = ":lua require('smart-splits').start_resize_mode()<CR>";
        options.desc = "[W]indow [R]esize";
      }
    ];
}
