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
   -- Компромисс для regular ANSI-7 (см. комментарий у ansi[8] ниже) — светлее
   -- comment, ближе к математическому оптимуму между ролью фона и ролью
   -- текста у Claude Code.
   white_muted  = '#686f7c',
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
   -- Тёмный selection_bg (bg_selection) давал ~1.6:1 контраста против
   -- приглушённого текста (comment) той же палитры — «серое на сером»,
   -- нечитаемо. Светлый фон + тёмный текст даёт ~6.6:1 и не зависит от
   -- исходного цвета выделяемого текста.
   selection_bg = onedark.fg,
   selection_fg = onedark.bg,
   ansi = {
      onedark.bg,      -- black
      onedark.red,     -- red
      onedark.green,   -- green
      onedark.yellow,  -- yellow
      onedark.blue_muted, -- blue (обычный, не bold — используется как фон выделения)
      onedark.purple,  -- magenta/purple
      onedark.cyan,    -- cyan
      -- Regular (не bold) ANSI-7 переиспользуется Claude Code в двух ролях
      -- сразу: как ФОН подсвеченных блоков (SGR 47, напр. развёрнутая
      -- команда) и как ЦВЕТ ТЕКСТА статусных строк (SGR 37, напр.
      -- "Cogitated for Ns"). Один плоский цвет не может одновременно быть
      -- «тёмным» (контраст с дефолтным светлым текстом поверх, для роли
      -- фона) и «светлым» (контраст с тёмным bg терминала, для роли
      -- текста) — это ограничение 16-цветной ANSI-палитры, не баг темы.
      -- white_muted — чуть светлее математического оптимума (комментарий
      -- в тон), даёт ~2.4–2.8:1 в обе стороны вместо 1:1 в одну.
      -- Bright-white ниже не трогаю — текст им не тускнеет.
      onedark.white_muted, -- white (обычный, не bold — компромисс между ролью фона и ролью текста)
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
