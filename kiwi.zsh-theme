if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='$FG[237]------------------------------------------------------------%{$reset_color%}
%(?.🐙.😪) $FG[032]%~\
$(git_prompt_info)$(git_prompt_status)$(git_remote_status) \
$FG[105]%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'


# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'

# right prompt
if type "virtualenv_prompt_info" > /dev/null
then
	RPROMPT='$(virtualenv_prompt_info)$my_gray%n@%m%{$reset_color%}%'
else
	RPROMPT='$my_gray%n@%m%{$reset_color%}%'
fi

# git settings
#ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075](branch:"
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]($FG[082]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"

# git_prompt_status
ZSH_THEME_GIT_PROMPT_UNTRACKED="🐾  "
ZSH_THEME_GIT_PROMPT_ADDED="🐣  "
ZSH_THEME_GIT_PROMPT_MODIFIED="✏️   "
ZSH_THEME_GIT_PROMPT_DELETED="✂️   "
ZSH_THEME_GIT_PROMPT_RENAMED="🎭  "
ZSH_THEME_GIT_PROMPT_UNMERGED="🤼  "

# git_remote_status
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="🧩  "
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="🏃  "
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="💔  "
