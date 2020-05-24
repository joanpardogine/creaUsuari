## Creació de funcions

Com en gairebé qualsevol llenguatge de programació, podeu utilitzar funcions per agrupar trossos de codi d’una manera més lògica o practicar l’art diví de la recursió.

Per declarar una funció només és qüestió d'escriure el nom de la funció
```bash
f_nomFuncio {
  senetències de codi
}
```

### Exemple de creació d'una funció

Per cridar a una funció, només cal fer una crida a la funció, com si es volgués executar un altre programa.

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

Mostra el fitxer [f_creaFuncions.sh](../scripts/f_creaFuncions.sh)

De les línia **```2```** a la **```4```** es troba la funció ***```f_acaba```***. I de la **```5```** a  la **```7```** la funció ***```f_hola```***.

Si no esteu del tot segurs del que fa aquest ***```script```***, proveu-lo.

Tingueu en compte que NO cal declarar una funció en cap ordre específic.

En executar l'***```script```***, primer us n’adonareu: la funció s’anomena ***```f_hola```***, en segon lloc la funció ***```f_acaba```***, i el programa mai arriba a la línia **```10```**.

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

Aquest ***```script```*** és gairebé idèntic a l’anterior. La diferència principal és el funcionament **```f_mostra```**. Aquesta funció imprimeix el primer argument que rep. Els arguments, dins de funccions, es tracten de la mateixa manera que els arguments que es proporcionen a un ***```script```***.
