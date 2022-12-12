local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<Leader>fr", ":Telescope live_grep<CR>", opt)

local pluginKeys = {}

-- nvim-tree

map("n", "<C-h>", ":NvimTreeToggle<CR>", opt)

-- key list
pluginKeys.nvimTreeList = {
  -- open file or folder
  { key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit" },
  -- open file with split
  { key = "v", action = "vsplit" },
  { key = "h", action = "split" },
  -- show the hidden file
  { key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
  { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
  -- file op
  { key = "<F5>", action = "refresh" },
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "x", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
  { key = "s", action = "system_open" },
}
return pluginKeys

