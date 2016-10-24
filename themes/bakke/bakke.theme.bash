#!/usr/bin/env bash

. $HOME/toddiuszho/bash-it/themes/colors.theme.bash
. $HOME/toddiuszho/bash-it/themes/base.theme.bash

# Comment
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_SUFFIX="${normal}|"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_SUFFIX="${normal}|"

function prompt_command() {
    #PS1="${bold_cyan}$(scm_char)${green}$(scm_prompt_info)${purple}$(ruby_version_prompt) ${yellow}\h ${reset_color}in ${green}\w ${reset_color}\n${green}→${reset_color} "
    #PS1="\n${purple}\h: ${reset_color} ${green}\w\n${bold_cyan}$(scm_char)${green}$(scm_prompt_info) ${green}→${reset_color} "
    #PS1="\n${cyan}\h: ${reset_color} ${yellow}\w\n${red}$(scm_char)${red}$(scm_prompt_info) ${green}→${reset_color} "
    #PS1="[\[\e[35m\]\t \[\e[36m\]\h \[\e[33m\]\W\[\e[0m\]]\$"
    #PS1="\n${cyan}\h: ${reset_color} ${yellow}\w ${green}$(scm_prompt_info)\n${reset_color}→ "
    PS1="${purple}\t ${cyan}\h ${yellow}\W${normal}$(scm_prompt_info) \$ "
}

safe_append_prompt_command prompt_command
