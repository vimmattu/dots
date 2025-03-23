config.load_autoconfig()
config.source("nord-theme.py")

c.fonts.default_family = "IosevkaTerm Nerd Font Mono"
c.fonts.default_size = "14pt"

config.bind(",l", "spawn --userscript open_in_libproxy")
config.bind(",m", "spawn --userscript view_in_mpv")
