#!/bin/bash
# Nom:  f_interficiesUsuari.sh
OPTIONS="Hola Surt"
  select opt in $OPTIONS; do
    if [ "$opt" = "Surt" ]; then
      echo fet!
      exit
    elif [ "$opt" = "Hola" ]; then
      echo "Hola món!"
    else
      echo "Opció incorrete!"
    fi
  done
