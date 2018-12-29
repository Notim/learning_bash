# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:/home/joao

echo "Arch Linux [version $(uname -r)]"
echo "(ↄ) $(date +'%Y') $(uname -o). All rights reversed "
echo ""

PS1='$(if [[ $? == 0 ]]; then echo "\[\e[32m\]:)"; else echo "\[\e[31m\]:("; fi) \[\e[0m\][\e[35m$(parse_git_branch)\[\033[01;32m\]\u@\h\[\033[00m\]: \[\033[01;34m\]\w\[\033[00m\]]$ '
PS2='/> '


function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "${BRANCH} "
	else
		echo ""
	fi
}




