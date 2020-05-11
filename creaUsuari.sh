#!/bin/bash
# Nom:  creaUsuari_v1.sh
# Execució obligatòriament un paràmtre nomUsuari
# $0  <- nom script
# $1  <- 1r parametre
# $@  <- llistat de paràmetres
# $#  <- quantitat de paràmetres
#  si $# = 0 -> error
# branca gestioNomUsuari faré control del nom
clear
# INICI comprovació de quantitat de parametres
if [ $# = 0 ];   #si $# = 0 --> no han passat cap paràmetre
 then
   echo "No has introduit cap paràmetre!"
   echo "Cal que entris la informació com a paràmetres!"
   echo "1r paràmetre el nom de l'usuari a donar d'alta"
   echo "2n paràmetre el nom del grup del nou usuari a donar d'alta [OPCIONAL]"
   exit 1         # retornem codi d'error = 1
else              #  si $# != 0 --> han passat 1 o més paràmetres
   if [ $# = 1 ]; #  si $#  = 1 --> han passat 1 paràmetre
      then
         nomUsuari=$1;    # el 1r paràmetre com a nomUsuari
         nomGrup=$1;      # el 1r paràmetre com a nomGrup
         echo "Has introduit 1 Paràmetre!"
         echo "Nom usuari = " $nomUsuari
         echo "Nom grup = " $nomGrup
      else        #  si $# != 1 --> han passat més d'1 paràmetre
         nomUsuari=$1;    # el 1r paràmetre com a nomUsuari
         nomGrup=$2;      # el 2n paràmetre com a nomGrup
         echo "Has introduit 2 Paràmetres!"
         echo "Nom usuari = " $nomUsuari
         echo "Nom grup = " $nomGrup
   fi # FINAL if [ $# = 1 ];
fi # FINAL comprovació de quantitat de paràmetres
