-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Vai para a home (dashboard do snacks.nvim) numa aba própria, sem mexer no layout atual
vim.keymap.set("n", "<leader>H", function()
  for _, tab in ipairs(vim.api.nvim_list_tabpages()) do
    for _, win in ipairs(vim.api.nvim_tabpage_list_wins(tab)) do
      local buf = vim.api.nvim_win_get_buf(win)
      if vim.bo[buf].filetype == "snacks_dashboard" then
        vim.api.nvim_set_current_tabpage(tab)
        return
      end
    end
  end
  vim.cmd("tabnew")
  Snacks.dashboard.open({ buf = 0, win = 0 })
end, { desc = "Home (Dashboard em aba própria)" })
