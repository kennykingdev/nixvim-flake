{
    config = {
      opts = {
        # Enable 24bit RGB color
        termguicolors = true;
        # Show line numbers
        number = true;
        # Show relative line numbers
        relativenumber = true;
        # Use the system clipboard
        clipboard = "unnamedplus";
        # Highlight the line that the cursor is on
        cursorline = true;
        # Auto indenting
        autoindent = true;
        smartindent = true;
        shiftwidth = 2;
        # Number of spaces that a <Tab> counts for
        tabstop = 2;
        softtabstop = 2;
        # Use spaces instead of tabs
        expandtab = true;
        # Enable sign column;
        signcolumn = "yes:1";
        # Wrap long lines
        linebreak = true;
        # When a file is changed outside of vim, re-read it
        autoread = true;
        # Easy searching.  "/const * =" would find all const assignments
        incsearch = true;
        # Keep a min number lines of context on the screen when scrolling vertically
        scrolloff = 8;
        # Keep a min number lines of context on the screen when scrolling horizontally
        sidescrolloff = 4;
        # Highlight column
        # colorcolumn = 81;
        # Enable mouse
        mouse = "a";
        # Case-insensitive searching UNLESS \C or 1+ capital letters are in the search
        ignorecase = true;
        smartcase = true;
        # completions keep the case you used, not change to match compl. source
        infercase = true;
        # Decrease update time
        updatetime = 250;
        # Decrease mapped sequence wait time
        # Displays which-key popup sooner
        timeoutlen = 300;
        # Open new splits to the right/bottom
        splitright = true;
        splitbelow = true;
        # Show whitespace characters, as well as indicators that there is text off-screen
        list = true;
        listchars = "tab:» ,trail:·,extends:↦,precedes:↤,nbsp:␣";
        # Preview substitutions as you type
        inccommand = "split";
        # Don't show the mode, since it's in the status line
        showmode = false;
      };

      clipboard = {
        providers.wl-copy.enable = true;
      };

      extraConfigLuaPre =
        # lua
        ''
        vim.fn.sign_define("diagnosticsignerror", { text = " ", texthl = "diagnosticerror", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignwarn", { text = " ", texthl = "diagnosticwarn", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignhint", { text = "󰌵", texthl = "diagnostichint", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsigninfo", { text = " ", texthl = "diagnosticinfo", linehl = "", numhl = "" })
        '';
    };
}
