-- One Dark (Atom), matching ~/.config/nvim/lua/plugins/onedark.lua (onedark_dark)
-- stylua: ignore
local onedark = {
   bg           = '#282c34',
   bg_statusline = '#2f343f', -- custom override, mirrors onedark.lua's bg_statusline
   bg_selection = '#3e4451',
   fg           = '#abb2bf',
   comment      = '#5c6370',
   red          = '#e06c75',
   green        = '#98c379',
   yellow       = '#e5c07b',
   blue         = '#61afef',
   -- Приглушённый синий для обычного (не bold) ANSI-4 — многие TUI (в т.ч.
   -- Claude Code с темой dark-ansi) красят фон выделения в обычный, не bright
   -- синий; яркий onedark.blue как фон был слишком светлым, текст на нём
   -- (в т.ч. серый onedark.fg) почти не читался. Bright-вариант ниже
   -- оставлен исходным ярким — акцентный синий в тексте не тускнеет.
   blue_muted   = '#3f7dc9',
   purple       = '#c678dd',
   cyan         = '#56b6c2',
   orange       = '#d19a66',
   cursor       = '#528bff',
   white        = '#ffffff',
}

local colorscheme = {
   foreground = onedark.fg,
   background = onedark.bg,
   cursor_bg = onedark.cursor,
   cursor_border = onedark.cursor,
   cursor_fg = onedark.bg,
   selection_bg = onedark.bg_selection,
   selection_fg = onedark.fg,
   ansi = {
      onedark.bg,      -- black
      onedark.red,     -- red
      onedark.green,   -- green
      onedark.yellow,  -- yellow
      onedark.blue_muted, -- blue (обычный, не bold — используется как фон выделения)
      onedark.purple,  -- magenta/purple
      onedark.cyan,    -- cyan
      onedark.fg,      -- white
   },
   brights = {
      onedark.comment, -- black
      onedark.red,     -- red
      onedark.green,   -- green
      onedark.yellow,  -- yellow
      onedark.blue,    -- blue
      onedark.purple,  -- magenta/purple
      onedark.cyan,    -- cyan
      onedark.white,   -- white
   },
   tab_bar = {
      background = 'rgba(0, 0, 0, 0.4)',
      active_tab = {
         bg_color = onedark.bg_statusline,
         fg_color = onedark.fg,
      },
      inactive_tab = {
         bg_color = onedark.bg,
         fg_color = onedark.comment,
      },
      inactive_tab_hover = {
         bg_color = onedark.bg,
         fg_color = onedark.fg,
      },
      new_tab = {
         bg_color = onedark.bg,
         fg_color = onedark.fg,
      },
      new_tab_hover = {
         bg_color = onedark.bg_statusline,
         fg_color = onedark.fg,
         italic = true,
      },
   },
   visual_bell = onedark.red,
   indexed = {
      [16] = onedark.orange,
      [17] = onedark.cursor,
   },
   scrollbar_thumb = onedark.bg_selection,
   split = onedark.comment,
   compose_cursor = onedark.purple,
}

return colorscheme
