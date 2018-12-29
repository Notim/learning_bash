alias ls='ls --color=auto'

alias permall='sudo chmod -R 777'
alias permweb='sudo chmod -R 755'
alias permown='sudo chmod -R 700'

alias sudo='sudo '
alias docker='sudo docker'
alias apt='sudo apt'
alias apt-update='sudo apt-update && sudo apt-upgrade'

alias pacman-update='sudo pacman -Syyu'
alias pacman-search='sudo pacman -Ss'
alias pacman-remove='sudo pacman -Ss'


function cs() { 
    cd "$1"; 
    ls -l;
}

function gitup(){
    date=$(date +%Y-%m-%d) && echo $date ;
    
    echo -e "\e[92m>pulling from origin..\e[0m" ;
        git pull origin master ;
    echo -e "\e[92m>Status..\e[0m";
        git status -s;
    echo -e "\e[92m>Adding to stage area..\e[0m"; 
        git add --all;
    echo -e "\e[92m>commiting..\e[0m" ;
        git commit -m "Up";    
    echo -e "\e[92m>pushing..\e[0m";
        git push origin master ;
    echo -e "\e[92m>setting user authentication to cache..\e[0m" ;
        git config --global credential.helper 'cache --timeout=15000';
    echo -e "\e[92m>done!\e[0m";
}

function addpath() {
    if [ $# -eq 0 ] 
        then
            echo "install path to the current user..";
            opt="current User";
    else
        echo "install path to the argument user..";
        opt=$1;
    fi
    
    pth=$(pwd);
    
    if [ $opt == "--root" ]; then
        echo export PATH=\$PATH:$pth >> /etc/bash.paths;
        source /etc/bash.paths;
    else
        echo export PATH=\$PATH:$pth >> ~/.bashrc;
        source ~/.bashrc;
    fi
    echo "added '$pth' path in bash profile with success!";
}

function startenv (){
    if [ $# -eq 0 ] 
        then
            echo "select a command, press -h to show help";
    else
        option=$1;
        if [ $option == "-l" ] 
            then
                ls ~/virtualenvs/;
        fi
        
        if [ $option == "-s" ] 
            then
                echo 'Starting the environment';
                cd ~/virtualenvs/$2/bin/;
                source activate;
                cd ~/;
        fi
        if [ $option == "-h" ] 
            then
                echo '-l : List all environment';
                echo '-s [envname] : start the selected environment';
                
                echo 'Enjoy!! writed by Notim_';
                
        fi
    fi
}
