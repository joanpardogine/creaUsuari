#!/bin/bash
# Nom:  f_creaFunAmbParam.sh
  function f_acaba {
    exit
  }
           
  function f_mostra {
    echo $1 
  }
           
  f_mostra "Hola"
  f_mostra " món!"
  f_acaba
   echo "no surto mai!"
