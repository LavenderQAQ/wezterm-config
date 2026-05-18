local wezterm = require('wezterm')
local platform = require('utils.platform')

local font = 'JetBrainsMono Nerd Font'
local font_size = platform().is_mac and 12 or 12

return {
   --font = wezterm.font(font, { weight = 'Bold', italic = false }),
   font = wezterm.font(font),
   font_size = font_size,

   --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'

   -- 灰度抗锯齿，不依赖 LCD 子像素，跨屏幕通用
   freetype_interpreter_version = 40,
   font_antialias = 'Greyscale', ---@type 'None'|'Greyscale'|'Subpixel'
   font_hinting = 'Full', ---@type 'None'|'Slight'|'Medium'|'Full'
}
