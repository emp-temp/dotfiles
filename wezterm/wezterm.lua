local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- config.color_scheme = 'Solarized Dark (Gogh)'
-- config.color_scheme = 'Sakura'
-- config.color_scheme = 'matrix'
-- config.color_scheme = 'Matrix (terminal.sexy)'
-- config.color_scheme = "BlueBerryPie"
-- config.color_scheme = 'hardhacker'
-- config.color_scheme = 'cyberpunk'
config.color_scheme = 'Dark Violet (base16)'

config.window_background_opacity = 0.9

config.font = wezterm.font('JetBrains Mono NF', { weight = 'Regular', italic = false })

config.font_size = 12

config.keys = {
  {
    key = "\\",
    mods = "ALT",
    action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" },
  },
  {
    key = "-",
    mods = "ALT",
    action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" },
  },
  {
    key = "k",
    mods = "ALT",
    action = wezterm.action.ActivatePaneDirection "Up",
  },
  {
    key = "j",
    mods = "ALT",
    action = wezterm.action.ActivatePaneDirection "Down",
  },
  {
    key = "h",
    mods = "ALT",
    action = wezterm.action.ActivatePaneDirection "Left",
  },
  {
    key = "l",
    mods = "ALT",
    action = wezterm.action.ActivatePaneDirection "Right",
  },
  {
    key = "f",
    mods = "ALT",
    action = wezterm.action.ToggleFullScreen,
  },
  {
    key = 't',
    mods = 'ALT',
    action = wezterm.action.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = 'w',
    mods = 'ALT',
    action = wezterm.action.CloseCurrentTab { confirm = true },
  },
}

for i = 1, 8 do
  -- CTRL+ALT + number to move to that position
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'ALT',
    action = wezterm.action.MoveTab(i - 1),
  })
end

return config
