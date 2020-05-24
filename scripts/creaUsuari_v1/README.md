# Primera versió ***```creaUsuari_v1.sh```***

Crearem un ***```script```*** que ens mostrarà un missatge en funció dels paràmetres que ens hagi passat l’usuari. Tot indicant quins haguessin estat els valor que haguéssim fet servir com a nom d’usuari i com a nom de grup en cada cas.

És a dir:

1. tornarà un missatge d’ajuda si no ens ha facilitat **cap *paràmetre*** i
   * enviarem un **```Codi de Sortida```** **```1```**,
1. tornarà un missatge indicant el nom d’usuari i el nom del grup si només ens ha facilitat **un *paràmetre*** i
   * enviarem un **```Codi de Sortida```** **```0```**.
1. tornarà un missatge indicant el nom d’usuari i el nom del grup si ens ha facilitat **dos *paràmetre*** i
   * enviarem un **```Codi de Sortida```** **```0```**.

> mostra l'***```script```*** [creaUsuari_v1.sh](creaUsuari_v1.sh)
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
