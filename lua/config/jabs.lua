require 'jabs'.setup {
    position = {'center', 'top'}, -- position = {'<position_x>', '<position_y>'} | <position_x> left, center, right,
    relative = 'editor', -- win, editor, cursor. Default win

    clip_popup_size = false, -- clips the popup size to the win (or editor) size. Default true
    border = 'single', -- none, single, double, rounded, solid, shadow, (or an array or chars). Default shadow
    sort_mru = true, -- Sort buffers by most recently used (true or false). Default false

    split_filename = true,
    split_filename_path_width = 20,
    preview_position = 'left',

    highlight = {
        current = "Title", -- default StatusLine
        hidden = "StatusLineNC", -- default ModeMsg
        split = "WarningMsg", -- default StatusLine
        alternate = "StatusLine" -- default WarningMsg
    },

    keymap = {
        h_split = "h", -- Horizontally split buffer. Default s
        v_split = "v", -- Vertically split buffer. Default v
        preview = "p", -- Open buffer preview. Default P
    },
}
