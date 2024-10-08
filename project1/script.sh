#!/bin/bash
echo "script to install the git software"
echo "Installation started"
if [ "$(uname)" == "Linux" ]; 
then
        echo "This is linux Box"
        sudo apt install git -y
elif [ "$(uname)" == "Darwin" ];
then
        echo "THis is mac"
        brew install git
else
        echo "not installing"
fi
