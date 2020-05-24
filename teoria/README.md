## Creació de funcions

Com en gairebé qualsevol llenguatge de programació, podeu utilitzar funcions per agrupar trossos de codi d’una manera més lògica o practicar l’art diví :stuck_out_tongue_winking_eye: de la ***recursió***.

Per declarar una **funció** només és qüestió d'escriure el ***nom de la funció***
```bash
f_nomFuncio {
  senetències de codi
}
```

<details>
 <summary>Exemple de creació i crida d'una funció.</summary>

### Exemple de creació i crida d'una funció.
Per cridar a una **funció**, només cal fer una crida al ***nom de la funció***, com si es volgués executar un altre programa.

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

Fitxer: [f_creaFuncions.sh](../scripts/f_creaFuncions.sh)

De les línia **```2```** a la **```4```** es troba la funció ***```f_acaba```***. I de la **```5```** a  la **```7```** la funció ***```f_hola```***.

Si no esteu del tot segurs del que fa aquest ***```script```***, proveu-lo.

Tingueu en compte que NO cal declarar les funcions en cap ordre específic.

En executar l'***```script```***, primer us n’adonareu: la funció s’anomena ***```f_hola```***, en segon lloc la funció ***```f_acaba```***, i el programa mai arriba a la línia **```10```**.

--------
### Exemple de creació i crida d'una funció amb ***paràmetres***.

```bash
#!/bin/bash
# Nom:  f_creaFunAmbParam.sh
  function f_acaba {
    exit
  }
           
  function f_mostra {
    echo -n $1 
  }
           
  f_mostra "Hola món!"
  f_acaba
   echo "no surto mai!"
```
Fitxer: [f_creaFunAmbParam.sh](../scripts/f_creaFunAmbParam.sh)


Aquest segon ***```script f_creaFunAmbParam.sh```*** és gairebé idèntic a l’anterior. La diferència principal la trobem en la funció  ***```f_mostra```***. Aquesta funció només conté la comanda ***```echo -n $1```***, per tant, el que farà aquesta funció serà mostrar per pantalla el primer del ***arguments*** que rep. Cal recordar que el paràmetre ***```-n```*** a la comanda ***```echo```*** indica que no afegeixñi un salt de línea desprès d'executar la comanda la comanda ***```echo```***.

Per més info podeu visitar [echo man page](http://linuxcommand.org/lc3_man_pages/echoh.html)

Com es pot veure, els ***arguments***, dins de les funcions es tracten de la mateixa manera que els ***arguments*** que es proporcionen a un ***```script```***. És a dir, ***```$1```*** fa referència al primer ***arguments*** rebut,  ***```$2```*** fa referència al segon ***arguments*** rebut, i així succesivament.

</details>
  
  
--------
