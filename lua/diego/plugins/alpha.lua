return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function ()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    
    dashboard.section.header.val = {
      " .----------------.  .----------------.  .----------------.  .----------------.  .----------------.",
      "| .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |",
      "| |  ________    | || |     _____    | || |  _________   | || |    ______    | || |     ____     | |",
      "| | |_   ___ `.  | || |    |_   _|   | || | |_   ___  |  | || |  .' ___  |   | || |   .'    `.   | |",
      "| |   | |   `. | | || |      | |     | || |   | |_  |_|  | || | | .'   |_|   | || |  |  .--.  |  | |",
      "| |   | |    | | | || |      | |     | || |   |  _|  _   | || | | |    ____  | || |  | |    | |  | |",
      "| |  _| |___.' | | || |     _| |_    | || |  _| |___| |  | || | | `.___]  _| | || |  |  `--'  |  | |",
      "| | |________.'  | || |    |_____|   | || | |_________|  | || |  `._____.'   | || |   `.____.'   | |",
      "| |              | || |              | || |              | || |              | || |              | |",
      "| '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |",
      "'----------------'  '----------------'  '----------------'  '----------------'  '----------------' ",
    }

      dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionSearch<CR>"),
      dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

  end,

}
