#!/bin/bash
# Nom:  f_interficiesUsuari.sh
OPTIONS="Hola Usuari Shell Surt"
  select opt in $OPTIONS; do
    if [ "$opt" = "Surt" ]; then
      echo fet!
      exit

    elif [ "$opt" = "Hola" ]; then
      echo "Hola $USER!"


    elif [ "$opt" = "Usuari" ]; then
      echo "Et dius $USER!"

    elif [ "$opt" = "Shell" ]; then
      echo "Fas servir $SHELL"
    else
      echo "Opció incorrete!"
    fi
  done
