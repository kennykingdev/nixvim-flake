{
    keymaps = [
      # Delete current buffer
      {
        mode = "n";
        key = "<leader>bd";
        action = "<cmd>lua Snacks.bufdelete()<cr>";
        options = {
          desc = "[B]uffer [D]elete";
        };
      }

      # Delete all other buffers
      {
        mode = "n";
        key = "<leader>bdo";
        action = "<cmd>lua Snacks.bufdelete.other()<cr>";
        options = {
          desc = "[B]uffer [D]elete [O]thers";
        };
      }

      # Lazygit
      {
        mode = "n";
        key = "<leader>gg";
        action = "<cmd>lua Snacks.lazygit.open()<cr>";
        options = {
          desc = "[G]it Lazy[G]it";
        };
      }
    ];

    autoCmd = [
      {
        event = "User";
        pattern = "MiniFilesActionRename";
        callback.__raw = ''
          function(event)
            Snacks.rename.on_rename_file(event.data.from, event.data.to)
          end'';
      }
    ];

    plugins.snacks = {
      enable = true;
      settings = {
        bigfile.enabled = true;
        rename.enabled = true;
        notifier.enabled = true;
        statuscolumn.enable = true;
        indent = {
          enable = true;
          animate.enabled = false;
        };
      };
    };
}
