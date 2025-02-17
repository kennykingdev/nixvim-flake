{
  plugins ={
    web-devicons.enable = true;
    telescope = {
      enable = true;

      keymaps = {
        "<leader>ff" = {
          action = "find_files";
          options.desc = "[F]ind [F]iles";
        };
        "<leader>fg" = {
          action = "live_grep";
          options.desc = "[F]ind with [G]rep";
        };
        "<leader>fb" = {
          action = "buffers";
          options.desc = "[F]ind [B]uffers";
        };
        "<leader>fh" = {
          action = "help_tags";
          options.desc = "[F]ind [H]elp tags";
        };
        "<leader>:" = {
          action = "command_history";
          options = {
            desc = "Command History";
          };
        };
        "<leader>;" = {
          action = "command_history";
          options = {
            desc = "Command History";
          };
        };
        "<leader>/" = {
          action = "current_buffer_fuzzy_find";
          options = {
            desc = "Fuzzy find current buffer";
          };
        };
        "<leader>fk" = {
          action = "keymaps";
          options = {
            desc = "[F]ind [K]eymaps";
          };
        };
      };

      extensions = {
        fzf-native.enable = true;
        ui-select.enable = true;
        media-files = {
          enable = true;
          settings = {
            filetypes = [
              "png"
              "jpg"
              "jpeg"
              "ico"
              "pdf"
              "webp"
              "mp4"
              "gif"
            ];
            find_cmd = "rg";
          };
        };
      };
    };
  };
}
