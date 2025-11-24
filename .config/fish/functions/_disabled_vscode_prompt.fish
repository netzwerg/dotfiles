# Global Colors

set -g fish_color_autosuggestion 8e908c
set -g fish_color_command 8959a8
set -g fish_color_comment eab700
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end 8959a8
set -g fish_color_error c82829
set -g fish_color_escape cyan
set -g fish_color_history_current cyan
set -g fish_color_host \x2do\x1ecyan
set -g fish_color_match cyan
set -g fish_color_normal normal
set -g fish_color_operator cyan
set -g fish_color_param 4271ae
set -g fish_color_quote 718c00
set -g fish_color_redirection 3e999f
set -g fish_color_search_match \x2d\x2dbackground\x3dpurple
set -g fish_color_status red
set -g fish_color_user \x2do\x1egreen
set -g fish_color_valid_path normal
set -g fish_pager_color_completion normal
set -g fish_pager_color_description 555\x1eyellow
set -g fish_pager_color_prefix cyan
set -g fish_pager_color_progress cyan

function fish_prompt
 set_color normal
 echo -n '> '
end
