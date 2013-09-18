#!/bin/bash
if  ( git status|grep -q 'nothing to commit' )
then
  p4 sync -f ...
else
  echo the git repository is unclean, please check it before continuing...
fi 
if  ( git status|grep -q 'nothing to commit' )
then
  echo great, the repository is clean, please go ahead...
else
  echo the git repository is unclean, please check it before continuing...
fi
