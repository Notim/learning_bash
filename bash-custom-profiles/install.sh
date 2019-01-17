#!/bin/bash
# writted  by Notim at 29-12-2018

count="$(grep -o 'already-installed' /etc/bash.bashrc | wc -l)";

if [[ "$count" != "0" ]]; then
    echo -e "\e[92mthat is already installed ! thank you\e[0m" ;
    exit
fi

# welcome message, in realy is only to force user enter with sudo password    
sudo sh -c "echo -e '\e[92mhello! this is an installer of my custom configurations to linux Bash\e[0m'" ;

echo -e "\e[92m==>\e[0m making backup, is always good!";
if [ ! -f /etc/bash.bashrc.bak ]; then
    sudo cp /etc/bash.bashrc /etc/bash.bashrc.bak ;
    sudo cp ~/.bashrc ~/bashrc.bak ;
fi

echo -e "\e[92m==>\e[0m setting global config" ;    
echo -e "\e[94m ->\e[0m global aliases" ;
sudo sh -c "cat global/root_aliases.sh > /etc/bash.aliases";
# adding aliases file to /etc/bash.bashrc if exists
if [ -f /etc/bash.aliases ]; then
    sudo sh -c "echo '# source aliases in global conf
if [ -f /etc/bash.aliases ]; then
    source /etc/bash.aliases 
fi' >> /etc/bash.bashrc"

fi

echo -e "\e[94m ->\e[0m global paths" ;
sudo sh -c "cat global/root_paths.sh > /etc/bash.paths" ;
# adding paths file to /etc/bash.bashrc if exists
if [ -f /etc/bash.paths ]; then
    sudo sh -c " echo '# source paths in global conf
if [ -f /etc/bash.paths ]; then 
    source /etc/bash.paths 
fi' >> /etc/bash.bashrc"

fi

echo -e "\e[94m ->\e[0m global PS customized" ;
sudo sh -c "cat global/root_PS_custom.sh >> /etc/bash.bashrc";

echo -e "\e[92m==>\e[0m setting user config" ;    

echo -e "\e[94m ->\e[0m User PS customized" ; 
sh -c "cat user/user_PS_custom.sh >> ~/.bashrc" ;

sudo sh -c "echo '#ok, now the custom bash is already-installed (keyword for not duplicity!!)!' >> /etc/bash.bashrc";
