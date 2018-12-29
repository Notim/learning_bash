count="$(grep -o 'already-installed' /etc/bash.bashrc | wc -l)";

if [[ "$count" == "0" ]]; then
    echo -e "\e[92msorry, but the custom profile isn't installed!\e[0m" ;
    return
fi

sudo sh -c "echo -e '\e[92mhello! this is an uninstaller of my custom configurations to linux Bash\e[0m'" ;

echo -e "\e[92m==>\e[0m restoring backup of the last global bashrc!";
sudo sh -c "rm /etc/bash.bashrc" ;
sudo sh -c "rm /etc/bash.aliases" ;
sudo sh -c "rm /etc/bash.paths" ;
sudo sh -c "mv /etc/bash.bashrc.bak /etc/bash.bashrc" ;

echo -e "\e[92m==>\e[0m restoring backup of the last User bashrc!";
sh -c "rm ~/.bashrc" ;
sh -c "mv ~/bashrc.bak ~/.bashrc" ;

echo -e "\e[92mOk all done!\e[0m";
