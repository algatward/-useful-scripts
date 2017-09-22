#!/bin/bash
#character select menu

names='Adam Jack Ben Alex Quit'

PS3='Select Character: '

select name in $names
do
  if [ $name == 'Quit' ]
    then
      break
  fi
  echo You are $name
done

echo Quiting...


