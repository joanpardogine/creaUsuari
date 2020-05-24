# Primera versió ***```creaUsuari_v1.sh```***

Crearem un ***```script```*** que ens mostrarà un missatge en funció dels paràmetres que ens hagi passat l’usuari. Tot indicant quins haguessin estat els valor que haguéssim fet servir com a nom d’usuari i com a nom de grup en cada cas.

És a dir:

1. tornarà un missatge d’ajuda si no ens ha facilitat **cap *paràmetre*** i
   * enviarem un **```Codi de Sortida```** **```1```**,
1. tornarà un missatge indicant el nom d’usuari i el nom del grup si només ens ha facilitat **un *paràmetre*** i
   * enviarem un **```Codi de Sortida```** **```0```**.
1. tornarà un missatge indicant el nom d’usuari i el nom del grup si ens ha facilitat **dos *paràmetre*** i
   * enviarem un **```Codi de Sortida```** **```0```**.
--
> mostra l'***```script```*** [creaUsuari_v1.sh](creaUsuari_v1.sh)

# Contingut de l'**```script```**
```bash
#!/bin/bash
# Nom:  creaUsuari_v1.sh
# Execució obligatòriament un paràmtre nomUsuari
# $0  <- nom script
# $1  <- 1r parametre
# $@  <- llistat de paràmetres
# $#  <- quantitat de paràmetres
#  si $# = 0 -> error
clear
# INICI comprovació de quantitat de parametres
if [ $# = 0 ];   #si $# = 0 --> no han passat cap paràmetre
 then
   echo "Cal que entris la informació com a paràmetres!"
   echo "1r paràmetre el nom de l'usuari a donar d'alta"
   echo "2n paràmetre el nom del grup del nou
                    usuari a donar d'alta [OPCIONAL]"
   exit 1         # retornem codi d'error = 1
else       #  si $# != 0 --> han passat 1 o més paràmetres
   if [ $# = 1 ]; #  si $#  = 1 --> han passat 1 paràmetre
      then
         nomUsuari=$1;    # el 1r paràmetre com a nomUsuari
         nomGrup=$1;      # el 1r paràmetre com a nomGrup
         echo "1 Paràmetre!"
         echo "Nom usuari = " $nomUsuari
         echo "Nom grup = " $nomGrup
      else   #  si $# != 1 --> han passat més d'1 paràmetre
         nomUsuari=$1;    # el 1r paràmetre com a nomUsuari
         nomGrup=$2;      # el 2n paràmetre com a nomGrup
         echo "2 Paràmetres!"
         echo "Nom usuari = " $nomUsuari
         echo "Nom grup = " $nomGrup
   fi # FINAL if [ $# = 1 ];
fi # FINAL comprovació de quantitat de paràmetres
```
-----------
## Execució de l'***```script```*** sense **cap *paràmetre***.
Cal que torni un **```Codi de Sortida```** **```0```**. 
```bash
joanpardo@daw1sisinfuf01:~/bin/pract4$ ./creaUsuari_v1.sh
Cal que entris la informació com a paràmetres!
1r paràmetre el nom de l'usuari a donar d'alta
2n paràmetre el nom del grup del nou usuari a donar d'alta [OPCIONAL]
joanpardo@daw1sisinfuf01:~/bin/pract4$ echo $?
1
joanpardo@daw1sisinfuf01:~/bin/pract4$
```
-----------
## Execució de l'***```script```*** amb **un sol *paràmetre***
Cal que torni un **```Codi de Sortida```** **```1```**. 
```bash
joanpardo@daw1sisinfuf01:~/bin/pract4$ ./creaUsuari_v1.sh param1
1 Paràmetre!
Nom usuari =  param1
Nom grup =  param1
joanpardo@daw1sisinfuf01:~/bin/pract4$ echo $?
0
joanpardo@daw1sisinfuf01:~/bin/pract4$
```
-----------
## Execució de l'**```script```** amb **un sol *paràmetre***
Cal que torni un **```Codi de Sortida```** **```0```**. 
```bash
joanpardo@daw1sisinfuf01:~/bin/pract4$ ./creaUsuari_v1.sh param1  param2
2 Paràmetres!
Nom usuari =  param1
Nom grup =  param2
joanpardo@daw1sisinfuf01:~/bin/pract4$ echo $?
0
joanpardo@daw1sisinfuf01:~/bin/pract4$
```
> mostra l'***```script```***  [creaUsuari_v1.sh](creaUsuari_v1.sh)
