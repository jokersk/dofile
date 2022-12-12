local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("no nvim-tree")
  return
end

local list_keys = require('keybindings').nvimTreeList
nvim_tree.setup({
    git = {
        enable = false,
    },
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    filters = {
        dotfiles = true,
        custom = { 'node_modules' },
    },
    view = {
        width = 40,
        side = 'right',
        hide_root_folder = false,
        mappings = {
            custom_only = false,
            list = list_keys,
        },
        -- not show linenumber
        number = false,
        relativenumber = false,
        -- show icon
        signcolumn = 'yes',
    },
    actions = {
        open_file = {
            resize_window = true,
            quit_on_open = false,
        },
    },
    -- wsl install -g wsl-open
    -- https://github.com/4U6U57/wsl-open/
    system_open = {
        cmd = 'wsl-open', -- mac 直接设置为 open
    },
})
