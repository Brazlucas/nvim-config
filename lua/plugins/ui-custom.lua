-- Colorscheme padrão e logo da home (dashboard do snacks.nvim)
local header = [[
█      █   █   ███   █   █  █████  █████   ███ 
█      █   █  █   █  █   █  █        █    █   █
█      █   █  █ █ █  █   █  ████     █    █████
█      █   █  █  █   █   █  █        █    █   █
█████   ███    ██ █   ███   █████    █    █   █
]]

return {
  { "LazyVim/LazyVim", opts = { colorscheme = "habamax" } },

  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = { header = header },
      },
    },
  },
}
