#!/bin/bash# Nom:    existeixUsuari.sh <nomUsuari>
#   Paràmetres d'entrada
#     $1 => nom usuari a comprovar si existeix
# Script que ens retorna si un usuari existeix o no.
# l'usuari a comprovar si existeix cal passar-lo per paràmetre
# si NO ens passa cap paràmetre  => $# = 0
#           --->>>>   retornem un 1 com a codi d'error
# si SI que ens passa un paràmetre 
#           --->>>>   retornem un 0 com a codi d'error = Tot correcte

:<< comentari
# $0    <- nom script
# $1    <- 1r paràmetre
# $<n>  <- <n> paràmetre
# $@    <- llistat de paràmetres
# $#    <- quantitat de paràmetres
# $?    <- valor del exit code de la darrera comanda executada
joanpardo@daw1sisinfuf01:~/bin/pract4$ cat /etc/group | grep joanpardo > /dev/null 2>&1
joanpardo@daw1sisinfuf01:~/bin/pract4$ echo $?
0
joanpardo@daw1sisinfuf01:~/bin/pract4$ cat /etc/group | grep ivan > /dev/null 2>&1
joanpardo@daw1sisinfuf01:~/bin/pract4$ echo $?
1
comentari

    if cat /etc/passwd | grep $1 > /dev/null 2>&1;
      then   # $?==0 l'usuari existeix!
        echo "El usuari $1 existeix!"
        exit 0   # retornem codi d'error = 0
      else     #  $?!=0 l'usuari NO existeix!
        echo "El usuari $1 NO existeix!"
        exit 1    # retornem codi d'error = 1
    fi   # FINAL -- if cat ....
