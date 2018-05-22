# af-magic.zsh-theme
# Repo: https://github.com/andyfleming/oh-my-zsh
# Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='$FG[237]------------------------------------------------------------%{$reset_color%}
$FG[024]%~\
$(git_prompt_info) \
$FG[024]%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'


# color vars
eval my_gray='$FG[247]'
eval my_orange='$FG[208]'

# right prompt
if type "virtualenv_prompt_info" > /dev/null
then
	RPROMPT='$my_gray$(virtualenv_prompt_info)%{$reset_color%}%'
else
	RPROMPT='{$reset_color%}%'
fi

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[022](branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[022])%{$reset_color%}"

# ZSH_HIGHLIGHT_STYLES[command]="c94824"
ZSH_HIGHLIGHT_STYLES[command]="red"
