-- Pull in the wezterm API
local wezterm = require "wezterm"

config = wezterm.config_builder()

config.color_scheme = 'GruvboxDarkHard'

-- tab bar
config.hide_tab_bar_if_only_one_tab = false
-- config.tab_bar_at_bottom = true
config.tab_max_width = 48
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = false
local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(
  config,
  {
    position = "top",
    modules = {
      workspace = { enabled = false },
      leader = { enabled = false },
      pane = { enabled = false },
      username = { enabled = false },
      hostname = { enabled = false },
      cwd = { enabled = false },

    }
  }
)

-- Environment config
local wsl_domains = wezterm.default_wsl_domains()
if next(wsl_domains) ~= nil then
  config.default_domain = wsl_domains[1].name
end

config.font = wezterm.font '0xProto Nerd Font'
config.colors.background = 'black'

config.window_decorations = "RESIZE"
config.window_close_confirmation = 'NeverPrompt'

-- tmux
config.keys = {
  {
    mods = "ALT",
    key = "c",
    action = wezterm.action.SpawnTab "CurrentPaneDomain",
  },
  {
    mods = "ALT",
    key = "x",
    action = wezterm.action.CloseCurrentPane { confirm = false }
  },
  {
    mods = "ALT",
    key = "p",
    action = wezterm.action.ActivateTabRelative(-1)
  },
  {
    mods = "ALT",
    key = "n",
    action = wezterm.action.ActivateTabRelative(1)
  },
  {
    mods = "ALT",
    key = "<",
    action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" }
  },
  {
    mods = "ALT",
    key = "-",
    action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" }
  },
  {
    mods = "ALT",
    key = "h",
    action = wezterm.action.ActivatePaneDirection "Left"
  },
  {
    mods = "ALT",
    key = "j",
    action = wezterm.action.ActivatePaneDirection "Down"
  },
  {
    mods = "ALT",
    key = "k",
    action = wezterm.action.ActivatePaneDirection "Up"
  },
  {
    mods = "ALT",
    key = "l",
    action = wezterm.action.ActivatePaneDirection "Right"
  },
  {
    mods = "ALT",
    key = "LeftArrow",
    action = wezterm.action.AdjustPaneSize { "Left", 5 }
  },
  {
    mods = "ALT",
    key = "RightArrow",
    action = wezterm.action.AdjustPaneSize { "Right", 5 }
  },
  {
    mods = "ALT",
    key = "DownArrow",
    action = wezterm.action.AdjustPaneSize { "Down", 5 }
  },
  {
    mods = "ALT",
    key = "UpArrow",
    action = wezterm.action.AdjustPaneSize { "Up", 5 }
  },
}

for i = 1, 9 do
  -- ALT + number to activate that tab
  table.insert(config.keys, {
    key = tostring(i),
    mods = "ALT",
    action = wezterm.action.ActivateTab(i - 1),
  })
end


-- and finally, return the configuration to wezterm
return config
