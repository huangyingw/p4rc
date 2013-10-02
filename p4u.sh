#!/bin/bash
red='\033[0;31m'
green='\033[0;32m'
NC='\033[0;0m' # No Color
if  ( git status|grep -q 'nothing to commit' )
then
    p4 sync -f ...
else
    echo -e "${red}the git repository is unclean, please check it before continuing... ${NC}"
fi 
if  ( git status|grep -q 'nothing to commit' )
then
    echo -e "${green}great, the repository is clean, please go ahead...  ${NC}"
else
    echo -e "${red}the git repository is unclean, please check it before continuing... ${NC}"
fi
