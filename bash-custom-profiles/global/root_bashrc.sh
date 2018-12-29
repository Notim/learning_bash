PS1='$(if [[ $? == 0 ]]; then echo "\[\e[32m\]:)"; else echo "\[\e[31m\]:("; fi) \[\e[0m\][\e[36m$(git branch 2> /dev/null | sed -n "s/*\(.*\)/\1 /p")\[\033[01;35m\]\u@\h\[\033[00m\]: \[\033[01;33m\]\w\[\033[00m\]]# '
PS2='/> '
