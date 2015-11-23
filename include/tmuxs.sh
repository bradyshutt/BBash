#!/bin/bash
alias ts=tmuxs "$@"
tmuxs() {
   echo "Select a TMUX session to attach to: "

   counter=a 
   numsesh=0

   while read line 
   do 
      echo "   ${counter}) ${line}"
      counter=$(echo "${counter}" | tr "0-9a-z" "1-9a-z_")
      numsesh=${numsesh+1}
   done <<<  "$(tmux ls | cut -d' ' -f4- --complement )"
#
#   lastsession=${counter}
#   echo "counter: ${counter}"
#   echo "numsesh: ${numsesh}"
#   echo "lastsession: ${lastsession}"
#
   echo "   ${counter}) new session"
   

   #counter=$(echo "${counter}" | tr "0-9a-z" "1-9a-z_")    #increment counter
   read ans

   if [[ ${ans} == $(echo "${counter}") ]] ;then
      echo "Session name:"
      read newsessionname
      tmux new -s ${newsessionname}
   else
      num=$( echo $ans | tr "a-z" "1-9")p
      sessionName=$(tmux ls | sed -n "$num" | cut -d':' -f-1 )
      tmux a -t $sessionName
   fi
}
