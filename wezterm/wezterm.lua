local wezterm = require 'wezterm';
local enable_wayland = false;


return {

  --Acceptable values are SteadyBlock, BlinkingBlock, SteadyUnderline, BlinkingUnderline, SteadyBar, and BlinkingBar
  --default_cursor_style = "BlinkingUnderline", 
  default_cursor_style = "SteadyUnderline", 

  keys = {
    --{key="{", mods="CTRL|ALT", action=wezterm.action{ActivateTabRelative=-1}},
    --{key="}", mods="CTRL|ALT", action=wezterm.action{ActivateTabRelative=1}},
    {key="Tab", mods="CTRL", action=wezterm.action{ActivateTabRelative=1}},
    {key="t", mods="CTRL", action=wezterm.action{SpawnTab="CurrentPaneDomain"}},

  },

  exit_behavior = "Close",

  --font = wezterm.font("CaskaydiaCove Nerd Font"),
  --font = wezterm.font("CodeNewRoman Nerd Font"),
  --font = wezterm.font("agave Nerd Font"),
  --font = wezterm.font("TerminessTTF Nerd Font"),
  --font = wezterm.font("FantasqueSansMono Nerd Font"),
  --font = wezterm.font("Hurmit Nerd Font"),
  --font = wezterm.font("FiraCode Nerd Font"),
  --font = wezterm.font("CamingoCode"),
  --font = wezterm.font("Cascadia Code PL"),
  font = wezterm.font("JetBrainsMono Nerd Font"),
  --font = wezterm.font("Telegrama"),
  --font = wezterm.font("CPMono_v07"),

  font_size = 10.5,
  adjust_window_size_when_changing_font_size = false,
  
  --enable_scroll_bar = true,
  initial_cols = 120,
  initial_rows = 30,
  --window_background_opacity = 0.99,
  cursor_blink_rate = 500,


  window_frame = {
    inactive_titlebar_bg = "#353535",
    active_titlebar_bg = "#5410e3",
    inactive_titlebar_fg = "#cccccc",
    active_titlebar_fg = "#ffffff",
    inactive_titlebar_border_bottom = "#5410e3",
    active_titlebar_border_bottom = "#5410e3",
    button_fg = "#cccccc",
    button_bg = "#5410e3",
    button_hover_fg = "#ffffff",
    button_hover_bg = "#3b3052",
  },


  -- set to false to disable the tab bar completely
  enable_tab_bar = true,

  -- set to true to hide the tab bar when there is only
  -- a single tab in the window
  hide_tab_bar_if_only_one_tab = false,

  --color_scheme = "Argonaut",
  --color_scheme = "Adria",
  --color_scheme = "Giselle",
  color_scheme = "tomochi",
  --color_scheme = "Atom",
  --color_scheme = "Andromeda",
  --color_scheme = "Aurora",
  --color_scheme = "Batman",
  --color_scheme = "Brogrammer",
  --color_scheme = "Dark+",
  --color_scheme = "Dracula",
  --color_scheme = "Duotone Dark",
  --color_scheme = "Flatland",
  --color_scheme = "Framer",
  --color_scheme = "Hardcore",
  --color_scheme = "Kibble",
  --color_scheme = "Konsolas",
  --color_scheme = "Lavandula",
  --color_scheme = "Mathias",
  --color_scheme = "Molokai",
  --color_scheme = "Monokai Remastered",
  --color_scheme = "Monokai Soda",
  --color_scheme = "midnight-in-mojave",
  --color_scheme = "OneHalfDark",
  --color_scheme = "RedPlanet",
  --color_scheme = "Royal",
  --color_scheme = "Seti",
  --color_scheme = "Shaman",
  --color_scheme = "SoftServer",
  --color_scheme = "synthwave",
  --color_scheme = "Thayer Bright",
  --color_scheme = "UnderTheSea",
  --color_scheme = "VibrantInk",
  --color_scheme = "Wez",


  colors = {
      -- The default text color
    foreground = "#757575",
      -- The default background color
    background = "#111111",
      -- Overrides the cell background color when the current cell is occupied by the
      -- cursor and the cursor style is set to Block
    cursor_bg = "#e2e2e2",
      -- Overrides the text color when the current cell is occupied by the cursor
    cursor_fg = "black",
      -- Specifies the border color of the cursor when the cursor style is set to Block,
      -- of the color of the vertical or horizontal bar when the cursor style is set to
      -- Bar or Underline.
    cursor_border = "#e2e2e2",

    ansi = {"black", "maroon", "green", "olive", "navy", "purple", "teal", "silver"},
    brights = {"grey", "red", "lime", "yellow", "blue", "fuchsia", "aqua", "white"},

      -- Arbitrary colors of the palette in the range from 16 to 255
    indexed = {[136] = "#af8700"},


    tab_bar = {

      -- The color of the strip that goes along the top of the window
      background = "#111111",

      -- The active tab is the one that has focus in the window
      active_tab = {
        -- The color of the background area for the tab
        bg_color = "#7e11d6",
        -- The color of the text for the tab
        fg_color = "#ffffff",

        -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
        -- label shown for this tab.
        -- The default is "Normal"
        intensity = "Normal",

        -- Specify whether you want "None", "Single" or "Double" underline for
        -- label shown for this tab.
        -- The default is "None"
        underline = "None",

        -- Specify whether you want the text to be italic (true) or not (false)
        -- for this tab.  The default is false.
        italic = false,

        -- Specify whether you want the text to be rendered with strikethrough (true)
        -- or not for this tab.  The default is false.
        strikethrough = false,
      },

      -- Inactive tabs are the tabs that do not have focus
      inactive_tab = {
        bg_color = "#262626",
        fg_color = "#808080",

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `inactive_tab`.
      },

      -- You can configure some alternate styling when the mouse pointer
      -- moves over inactive tabs
      inactive_tab_hover = {
        bg_color = "#3b3052",
        fg_color = "#909090",
        italic = false,

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `inactive_tab_hover`.
      },

      -- The new tab button that let you create new tabs
      new_tab = {
        bg_color = "#3b3052",
        fg_color = "#909090",

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `new_tab`.
      },

      -- You can configure some alternate styling when the mouse pointer
      -- moves over the new tab button
      new_tab_hover = {
        bg_color = "#00ff50",
        fg_color = "#000000",
        bold = true

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `new_tab_hover`.
      }
    }
  }
}


