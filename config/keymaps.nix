{
    globals.mapleader = " ";

    keymaps = [
      # Clear search highlights
      {
        mode = "n";
        key = "<Esc>";
        action = "<cmd>nohlsearch<CR>";
        options = {
          desc = "Clear search highlights";
        };
      }

      # Diagnostics
      {
        mode = "n";
        key = "[d";
        action = "vim.diagnostic.goto_prev";
        options = {
          desc = "Go to previous [d]iagnostic";
        };
      }
      {
        mode = "n";
        key = "]d";
        action = "vim.diagnostic.goto_next";
        options = {
          desc = "Go to next [d]iagnostic";
        };
      }
      {
        mode = "n";
        key = "<leader>cd";
        action = "vim.diagnostic.open_float";
        options = {
          desc = "[C]ode [D]iagnostic messages";
        };
      }
      {
        mode = "n";
        key = "<leader>cc";
        action = "vim.diagnostic.setloclist";
        options = {
          desc = "[C]ode [C]wickfix? list";
        };
      }
      {
        mode = "n";
        key = "<leader>cn";
        action = "<cmd>cnext<cr>";
        options = {
          desc = "[C]ode quickfix [N]ext";
        };
      }
      {
        mode = "n";
        key = "<leader>cp";
        action = "<cmd>cprev<cr>";
        options = {
          desc = "[C]ode quickfix [P]revious";
        };
      }

      # Make it easier to leave terminal mode
      {
        mode = "t";
        key = "<Esc><Esc>";
        action = "<C-\\><C-n>";
        options = {
          desc = "Exit terminal mode";
        };
      }

      # Move lines up/down with Alt+j/k
      {
        mode = "n";
        key = "<M-j>";
        action = "<cmd>m .+1<cr>==";
        options = {
          desc = "Move line down";
        };
      }
      {
        mode = "n";
        key = "<M-k>";
        action = "<cmd>m .-2<cr>==";
        options = {
          desc = "Move line up";
        };
      }
      {
        mode = "i";
        key = "<M-j>";
        action = "<esc><cmd>m .+1<cr>==gi";
        options = {
          desc = "Move line down";
        };
      }
      {
        mode = "i";
        key = "<M-k>";
        action = "<esc><cmd>m .-2<cr>==gi";
        options = {
          desc = "Move line up";
        };
      }
      {
        mode = "v";
        key = "<M-j>";
        action = ":m '>+1<cr>gv=gv";
        options = {
          desc = "Move line down";
        };
      }
      {
        mode = "v";
        key = "<M-k>";
        action = ":m '<-2<cr>gv=gv";
        options = {
          desc = "Move line up";
        };
      }

      # # Move focus to another window
      # {
      #   mode = "n";
      #   key = "<C-h>";
      #   action = "<C-w>h";
      #   options = {
      #     desc = "Go to window on left";
      #     remap = true;
      #   };
      # }
      # {
      #   mode = "n";
      #   key = "<C-l>";
      #   action = "<C-w>l";
      #   options = {
      #     desc = "Go to window on right";
      #     remap = true;
      #   };
      # }
      # {
      #   mode = "n";
      #   key = "<C-k>";
      #   action = "<C-w>k";
      #   options = {
      #     desc = "Go to window above";
      #     remap = true;
      #   };
      # }
      # {
      #   mode = "n";
      #   key = "<C-j>";
      #   action = "<C-w>j";
      #   options = {
      #     desc = "Go to window below";
      #     remap = true;
      #   };
      # }
      # {
      #   mode = "n";
      #   key = "<leader>ww";
      #   action = "<C-w>c";
      #   options = {
      #     desc = "Go to other window";
      #     remap = true;
      #   };
      # }

      # Create/Delete windows
      {
        mode = "n";
        key = "<leader>w-";
        action = "<C-w>s";
        options = {
          desc = "Split [W]indow Vertically";
        };
      }
      {
        mode = "n";
        key = "<leader>w\\";
        action = "<C-w>v";
        options = {
          desc = "Split [W]indow Horizontally";
        };
      }
      {
        mode = "n";
        key = "<leader>wd";
        action = "<cmd>close<cr>";
        options = {
          desc = "[W]indow [D]elete";
        };
      }

      # # Resize windows
      # {
      #   mode = "n";
      #   key = "<C-M-k>";
      #   action = "<C-w>+";
      #   options = {
      #     desc = "[W]indow Resize Taller";
      #   };
      # }
      # {
      #   mode = "n";
      #   key = "<C-M-j>";
      #   action = "<C-w>-";
      #   options = {
      #     desc = "[W]indow Resize Shorter";
      #   };
      # }
      # {
      #   mode = "n";
      #   key = "<C-M-l>";
      #   action = "<C-w>>";
      #   options = {
      #     desc = "[W]indow Resize Wider";
      #   };
      # }
      # {
      #   mode = "n";
      #   key = "<C-M-h>";
      #   action = "<C-w><";
      #   options = {
      #     desc = "[W]indow Resize Narrower";
      #   };
      # }
      # {
      #   mode = "n";
      #   key = "<leader>we";
      #   action = "<C-w>=";
      #   options = {
      #     desc = "[W]indow Resize [E]qually";
      #   };
      # }

      # Hitting shift every time I want to enter a command is soooo annoying
      {
        mode = "n";
        key = ";";
        action = ":";
        options = {
          desc = "Enter command mode";
        };
      }

      # Quick escape out of insert mode.  "jk" never comes up when typing
      {
        mode = "i";
        key = "jk";
        action = "<Esc>";
        options = {
          desc = "Exit insert mode with 'jk'";
        };
      }

      # Quit all
      {
        mode = "n";
        key = "<leader>qq";
        action = "<cmd>qa<cr>";
        options = {
          desc = "[QQ]uit All";
        };
      }

      # Save file
      {
        mode = [
          "i"
          "x"
          "n"
          "s"
        ];
        key = "<C-s>";
        action = "<cmd>w<cr><esc>";
        options = {
          desc = "Save File";
        };
      }

      # Tab management
      {
        mode = "n";
        key = "<leader><tab>l";
        action = "<cmd>tablast<cr>";
        options = {
          desc = "Go to [TAB], [L]ast";
        };
      }
      {
        mode = "n";
        key = "<leader><tab>f";
        action = "<cmd>tabfirst<cr>";
        options = {
          desc = "Go to [TAB], [F]irst";
        };
      }
      {
        mode = "n";
        key = "<leader><tab><tab>";
        action = "<cmd>tabnew<cr>";
        options = {
          desc = "New Tab";
        };
      }
      {
        mode = "n";
        key = "<leader><tab>]";
        action = "<cmd>tabnext<cr>";
        options = {
          desc = "Next Tab";
        };
      }
      {
        mode = "n";
        key = "<leader><tab>[";
        action = "<cmd>tabprevious<cr>";
        options = {
          desc = "Previous Tab";
        };
      }
      {
        mode = "n";
        key = "<leader><tab>d";
        action = "<cmd>tabclose<cr>";
        options = {
          desc = "[TAB] [D]elete";
        };
      }

      # When "next"-ing through search results, put the next result and cursor midpage
      {
        mode = "n";
        key = "n";
        action = "nzzzv";
      }
      {
        mode = "n";
        key = "N";
        action = "Nzzzv";
      }

      # Scroll up/down half page, and leave your cursor in middle of the page
      {
        mode = "n";
        key = "<C-d>";
        action = "<C-d>zz";
      }
      {
        mode = "n";
        key = "<C-u>";
        action = "<C-u>zz";
      }
    ];
}
