# Activitat 4: Script per donar d’alta un usuari.
## Objectiu
L’objectiu d’aquesta pràctica és realitzar un ***```script```*** en ***```bash```*** per donar d’alta un usuari al sistema operatiu. Aquest ***```script```*** donarà d’alta el ***nou* usuari** rebent les dades per **paràmetres**. Com a mínim rebrà **un *paràmetre*** amb el **nom d’usuari**.

Es considerarà els següents escenaris.
## **Escenari 1**: Només es rep **un *paràmetre***.
Es considerarà, en aquest cas, que el ***paràmetre*** rebut serà el **nom del *nou* usuari**, i s’assumirà que aquest mateix ***paràmetre*** és el **nom del grup** al qual es vol que pertanyi el ***nou* usuari**.

## **Escenari 2**: Se’n reben **dos *paràmetres***, o **més de dos *paràmetres***.
En el cas en que es rebin **dos *paràmetres***, o **més de dos *paràmetres***, es considerarà que **el *primer* dels *paràmetres*** serà el **```nom usuari```** a donar d’alta, i que **el *segon* dels *paràmetres***, és el **```nom del grup```** al qual es vol que pertanyi el **```nou usuari```**.


# Codis de sortida
<details>
  <summary> fes click per expandir.</summary>

En qualsevol dels casos, caldrà comprovar si el **nom del *nou* usuari** i el nom del grup rebut existeixen.

## Codi de Sortida => ***`0`***
En el cas en el que l’usuari ens faciliti tota la informació i no tinguem cap problema per donar d’alta l’usuari, cap ***paràmetre***, llavors mostrarem un missatge informant de que tot ha anat correctament.

I enviarem un Codi de Sortida amb un valor de ***`0`***.

## Codi de Sortida => ***`1`***
En el cas en el que l’usuari no ens faciliti **cap *paràmetre***, llavors mostrarem un missatge d’ajuda, indicant que cal que com a mínim ens faciliti **un *paràmetre***.

I enviarem un Codi de Sortida amb un valor d’***`1`***.

## Codi de Sortida => ***`2`***
En el cas en el que l’usuari ens faciliti com a **nom del *nou* usuari** el d’un usuari que ja existeix, llavors mostrarem un missatge d’error en que comunicarem que l’usuari ja existeix.

I enviarem un Codi de Sortida amb un valor de ***`2`***.
</details>

# Primera versió ***`creaUsuari_v1.sh`***

<details>
  <summary> fes click per expandir.</summary>
Crearem un ***```script```*** que ens mostrarà un missatge en funció dels paràmetres que ens hagi passat l’usuari. Tot indicant quins haguessin estat els valor que haguéssim fet servir com a nom d’usuari i com a nom de grup en cada cas.

És a dir:

1. tornarà un missatge d’ajuda si no ens ha facilitat **cap *paràmetre*** i
   * enviarem un **codi sortida** **`1`**,
1. tornarà un missatge indicant el nom d’usuari i el nom del grup si només ens ha facilitat **un *paràmetre*** i
   * enviarem un **codi sortida** **`0`**.
1. tornarà un missatge indicant el nom d’usuari i el nom del grup si ens ha facilitat **dos *paràmetre*** i
   * enviarem un **codi sortida** **`0`**.

---- 
### Ves a l'***```script```*** [creaUsuari_v1.sh](./scripts/creaUsuari_v1.sh)

  
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



## Execució de l'***```script```*** sense **cap *paràmetre***.
Cal que torni un **Codi de Sortida** **`0`**. 
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
Cal que torni un **Codi de Sortida** **`1`**. 
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
Cal que torni un **Codi de Sortida** **`0`**. 
```bash
joanpardo@daw1sisinfuf01:~/bin/pract4$ ./creaUsuari_v1.sh param1  param2
2 Paràmetres!
Nom usuari =  param1
Nom grup =  param2
joanpardo@daw1sisinfuf01:~/bin/pract4$ echo $?
0
joanpardo@daw1sisinfuf01:~/bin/pract4$
```
-----------
</details>


# Creació de funcions
<details>
  <summary> fes click per expandir.</summary>
  
## Creació de funcions

Com en gairebé qualsevol llenguatge de programació, podeu utilitzar funcions per agrupar trossos de codi d’una manera més lògica o practicar l’art diví de la recursió.

Declarar una funció només és qüestió d'escriure la funció ***`f_nomFuncio { codi }`***.

### Mostra de funció

Cridar a una funció és com cridar a un altre programa, només cal escriure el seu nom.

```bash
#!/bin/bash
# Nom:  f_creaFuncions.sh
  function f_acaba {
      exit
   }
           
   function f_hola {
      echo "Hola món!"
   }
           
   f_hola
   f_acaba
   echo "no surto mai!"
```

Mostra el fitxer [f_creaFuncions.sh](scripts/f_creaFuncions.sh)

De les línia **`2`** a la 4 es troba la funció **`f_acaba`**. I de la 5 a  la 7 la funció **`f_hola`**.

Si no esteu del tot segurs del que fa aquest ***```script```***, proveu-lo.

Tingueu en compte que NO cal declarar una funció en cap ordre específic.

En executar l'***```script```***, primer us n’adonareu: la funció s’anomena **`f_hola`**, en segon lloc la funció **`f_acaba`**, i el programa mai arriba a la línia 10.

### Mostra de funció amb mostra de ***paràmetres***

```bash
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
```
Mostra el fitxer [f_creaFunAmbParam.sh](scripts/f_creaFunAmbParam.sh)

Aquest ***```script```*** és gairebé idèntic a l’anterior. La diferència principal és el funcionament **`f_mostra`**. Aquesta funció imprimeix el primer argument que rep. Els arguments, dins de funccions, es tracten de la mateixa manera que els arguments que es proporcionen a un ***```script```***.


## Interfícies d'usuari

Ús de selecció per fer menús senzills
```bash
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
      clear
      echo "Opció incorrete!"
    fi
  done
```
Mostra el fitxer [f_interficiesUsuari.sh](scripts/f_interficiesUsuari.sh)

Si executeu aquest ***```script```***, veureu que és un record del programador per als menús basats en text. Probablement notareu que és molt semblant a la construcció **`for`**, només en lloc de fer un loop per cada "paraula" en $ OPTIONS, que demana a l'usuari.

### Ús de la línia de comandes

```bash
#!/bin/bash
# Nom:  f_usLiniaComandes.sh
if [ -z "$1" ]; then 
  echo executant $0
  exit
fi
SRCD=$1
TGTD="/var/backups/"
OF=home-$(date +%Y%m%d).tgz

echo "SRCD= $SRCD"
echo "TGTD= $TGTD"
echo "OF=home-\$(date +%Y%m%d).tgz"
echo "OF= $OF"
# tar -cZf $TGTD$OF $SRCD
```
Mostra el fitxer [f_usLiniaComandes.sh](scripts/f_usLiniaComandes.sh)


Per veure que fa aquest ***```script```*** farem servir el ***```debugger```*** de ***``bash```***. ***```bash -x```***

```bash
joanpardo@daw1sisinfuf01:~/bin/pract4$ bash -x f_usLiniaComandes.sh
+ '[' -z '' ']'
+ echo executant f_usLiniaComandes.sh
executant f_usLiniaComandes.sh
+ exit
joanpardo@daw1sisinfuf01:~/bin/pract4$ bash -x f_usLiniaComandes.sh hola
+ '[' -z hola ']'
+ SRCD=hola
+ TGTD=/var/backups/
++ date +%Y%m%d
+ OF=home-20200518.tgz
+ echo 'SRCD= hola'
SRCD= hola
+ echo 'TGTD= /var/backups/'
TGTD= /var/backups/
+ echo 'OF=home-$(date +%Y%m%d).tgz'
OF=home-$(date +%Y%m%d).tgz
+ echo 'OF= home-20200518.tgz'
OF= home-20200518.tgz
```


get it from: https://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-9.html


</details>
