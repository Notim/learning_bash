#!/bin/bash
echo "making backup, is always good!"
if [ ! -f /etc/bash.bashrc.bak ]; then
    sudo cp /etc/bash.bashrc /etc/bash.bashrc.bak
    sudo cp ~/.bashrc ~/bashrc.bak
fi

echo "installing !!!"
echo "==> setting global config"

sudo sh -c "cat global/root_aliases.sh > /etc/bash.aliases";
sudo sh -c "cat global/root_paths.sh > /etc/bash.paths";

# adding aliases file 
if [ -f /etc/bash.aliases ]; then
    sudo sh -c "echo '# source aliases in global conf
if [ -f /etc/bash.aliases ]; then
    source /etc/bash.aliases 
fi' >> /etc/bash.bashrc"

fi
# adding paths file 
if [ -f /etc/bash.paths ]; then
    sudo sh -c " echo '# source paths in global conf
if [ -f /etc/bash.paths ]; then 
    source /etc/bash.paths 
fi' >> /etc/bash.bashrc"

fi
