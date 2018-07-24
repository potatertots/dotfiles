## COLORSCHEME: gruvbox dark
set-option -g status "on"

# default statusbar colors
set-option -g status-bg colour235 #bg1
set-option -g status-fg colour223 #fg1

# default window title colors
set-window-option -g window-status-bg colour214 #yellow
set-window-option -g window-status-fg colour237 #bg1

set-window-option -g window-status-activity-bg colour237 #bg1
set-window-option -g window-status-activity-fg colour248 #fg3

# active window title colors
set-window-option -g window-status-current-bg default
set-window-option -g window-status-current-fg colour237 #bg1

# pane border
set-option -g pane-active-border-fg colour214 #fg2
# set-option -g pane-active-border-bg colour250 #fg2
set-option -g pane-border-fg colour237 #bg1
# set-option -g pane-border-bg colour237 #bg1

# message infos
set-option -g message-bg colour239 #bg2
set-option -g message-fg colour223 #fg1

# writting commands inactive
set-option -g message-command-bg colour239 #fg3
set-option -g message-command-fg colour223 #bg1

# pane number display
set-option -g display-panes-active-colour colour250 #fg2
set-option -g display-panes-colour colour237 #bg1

# clock
set-window-option -g clock-mode-colour colour109 #blue

# bell
set-window-option -g window-status-bell-style fg=colour235,bg=colour167 #bg, red

## Theme settings mixed with colors (unfortunately, but there is no cleaner way)
set -g status-interval 100

set-option -g status-position top
set-option -g status-attr nsne
set-option -g status-justify centre
set-option -g status-left-attr none
set-option -g status-left-length 80
set-option -g status-right-attr none
set-option -g status-right-length 80
set-window-option -g window-status-activity-attr none
set-window-option -g window-status-attr none
set-window-option -g window-status-separator ""

set-option -g status-left "#[fg=colour248, bg=colour241]#{prefix_highlight}"
set-option -g status-right "#[fg=colour248, bg=colour241] #S "

set-window-option -g window-status-current-format "#[fg=colour239, bg=colour248, :nobold, noitalics, nounderscore]#[fg=colour239, bg=colour214] #I |#[fg=colour239, bg=colour214, bold] #W #{?window_zoomed_flag,[Z] ,}#[fg=colour214, bg=colour237, nobold, noitalics, nounderscore]"
set-window-option -g window-status-format "#[fg=colour237,bg=colour235,noitalics]#[fg=colour223,bg=colour237] #I |#[fg=colour223, bg=colour237] #W #{?window_zoomed_flag,[Z] ,}#[fg=colour239, bg=colour237, noitalics]"
