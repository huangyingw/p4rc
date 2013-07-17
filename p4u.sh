#!/bin/bash
if  ( git status|grep -q 'nothing to commit' )
then
  p4 sync -f ...
else
  echo the git repository is unclean, please check it before continuing...
fi 
