# /etc/bash/bashrc

# Shell is non-interactive.  Be done now!   
if [[ $- != *i* ]] ; then
   return
fi

# verify the emulator screensize 
shopt -s checkwinsize

# write the command in history
shopt -s histappend

# set emulator title
case ${TERM} in
   xterm*|rxvt*|Eterm|aterm|kterm|gnome*|interix)
      PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
      ;;
   screen)
      PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
      ;;
esac

use_color=false

safe_term=${TERM//[^[:alnum:]]/?}  # sanitize TERM 

match_lhs=""

[[ -f ~/.dir_colors   ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"

[[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"

[[ -z ${match_lhs}    ]] \
   && type -P dircolors >/dev/null \
   && match_lhs=$(dircolors --print-database)
[[ $'\n'${match_lhs} == *$'\n'"TERM "${safe_term}* ]] && use_color=true

if ${use_color} ; then
# Enable colors for ls, etc.  Prefer ~/.dir_colors #64489   
   if type -P dircolors >/dev/null ; then
      if [[ -f ~/.dir_colors ]] ; then
         eval $(dircolors -b ~/.dir_colors)
      elif [[ -f /etc/DIR_COLORS ]] ; then
         eval $(dircolors -b /etc/DIR_COLORS)
      fi
   fi

   if [[ ${EUID} == 0 ]] ; then
      PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
   else
      PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
   fi

   alias ls='ls --color=auto'
   alias grep='grep --colour=auto'
else
   if [[ ${EUID} == 0 ]] ; then
      # show root@ when we don't have colors
      PS1='\u@\h \W \$ '
   else
      PS1='\u@\h \w \$ '
   fi
fi

# Try to keep environment pollution down, EPA loves us.
unset use_color safe_term match_lhs

# don't put duplicate lines in the history. See bash(1) for more options
HISTCONTROL=ignoredups:ignorespace

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
# Kb 
HISTFILESIZE=2000

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# source aliases in global conf
if [ -f /etc/bash.aliases ]; then
    source /etc/bash.aliases 
fi
# source paths in global conf
if [ -f /etc/bash.paths ]; then 
    source /etc/bash.paths 
fi
echo "Arch Linux [version $(uname -r)]"
echo "(ↄ) $(date +'%Y') $(uname -o). All rights reversed "
echo ""

PS1='$(if [[ $? == 0 ]]; then echo "\[\e[32m\]:)"; else echo "\[\e[31m\]:("; fi) \[\e[0m\][\e[36m$(getGitBranch)\[\033[01;35m\]\u@\h\[\033[00m\]: \[\033[01;33m\]\w\[\033[00m\]]# '
PS2='/> '
#ok, now the custom bash is already-installed (keyword for not duplicity!!)!
 
