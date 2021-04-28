# Base: https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/lukerandall.zsh-theme

local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"

function my_git_prompt_info() {
  if ref=$(git symbolic-ref HEAD 2> /dev/null); then
    GIT_STATUS=$(git_prompt_status)
    [[ -n $GIT_STATUS ]] && GIT_STATUS=" $GIT_STATUS"
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$GIT_STATUS$ZSH_THEME_GIT_PROMPT_SUFFIX"
  elif refs=$(git for-each-ref --format '%(refname:short)' --points-at HEAD 'refs/remotes/**' | grep -vx origin/HEAD); then
    ref=$(printf %s "$refs" | tr '\n' ', ')
    GIT_STATUS=$(git_prompt_status)
    [[ -n $GIT_STATUS ]] && GIT_STATUS=" $GIT_STATUS"
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX_DETACHED$ref$GIT_STATUS$ZSH_THEME_GIT_PROMPT_SUFFIX_DETACHED"  
  fi
}

PROMPT='%{$fg_bold[green]%}%n@%m%{$reset_color%} %{$fg_bold[blue]%}%2~%{$reset_color%} $(my_git_prompt_info)%{$reset_color%}%B»%b '
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=") %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX_DETACHED="%{$fg[red]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX_DETACHED=") %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%%"
ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_MODIFIED="*"
ZSH_THEME_GIT_PROMPT_RENAMED="~"
ZSH_THEME_GIT_PROMPT_DELETED="!"
ZSH_THEME_GIT_PROMPT_UNMERGED="?"
