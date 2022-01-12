#!/bin/sh

#  ==================================================
#  PushRepos.sh
#  ==================================================
#  DESCRIPTION 
#  Update all git repos in current folder at once.
#  __________________________________________________
#  Miguel Ayala, 06-Jan-2022.
#  ==================================================

for d in */ ; do
    
    [ -L "${d%/}" ] && continue
    
    echo "$d"
    cd $d

    if [ -d ".git" ] ;
      then   
           git add .
           git commit -a -m "Commit by script."
           
           if [[ $? -eq 0 ]]; then
             git push
           fi       
    fi;

    cd ..

done;
