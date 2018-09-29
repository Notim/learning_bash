alias permall='sudo chmod -R 777'
alias sudo='sudo '

function gitup(){
    date=$(date +%Y-%m-%d) && echo $date ;
    echo 'pulling from origin.. ' && git pull origin master ;
    echo 'Status.. ' && git status ;
    echo 'Add to stage area.. ' && git add --all;
    echo 'commiting.. ' && git commit -m "Up";    
    echo 'pushing.. ' && git push origin master ;
    
    echo "setting user authentication to cache..";
    git config --global credential.helper 'cache --timeout=3600';
    
    echo 'done';
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
function cs() { 
    cd "$1"; 
    ls -l;
}
