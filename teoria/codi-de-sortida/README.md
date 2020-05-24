# Codi de sortida

Qualsevol comanda que s’executa a Linux, finalitza retornat un ***```codi de sortida```*** (anomenat ***```exit code```***). A vegades també es coneix com a ***```estat de retorn```***  (***```return status```***) o ***```estat de sortida```*** (***```exit status```***). Aquest ***```codi de sortida```*** indica quin ha sigut l’estat final de l’execució de la comanda. És a dir, si el ***```codi de sortida```*** que retorna la comanda és ***```0```***, significa que l’execució de la comanda ha estat correcte, és a dir, que no hi ha hagut cap problema. Mentre que si el ***```codi de sortida```*** que retorna la comanda és diferent de ***```0```***, significa que durant l’execució de la comanda hi ha hagut algun problema.

Aquest ***```codi d’error```*** és el que la ***```shell```*** fa servir per comunicar-se amb els processos.

Quan un ***```script```*** finalitza amb una sortida que no té ***```paràmetre```***, l’***```estat de sortida```*** del ***```script```*** és l’***```estat de sortida```*** de l’última ordre executada en el ***```script```*** (anterior a la sortida).

```bash
#!/bin/bash
   comanda 1
   . . .
   darrera comanda
# Sortirà amb l'estat de l'última comanda.
exit
```

L’equivalent a un ***```exit```*** sense codi és la ***```exit $?```***, o el que és el mateix sortir sense escriure cap ***```exit```***.
```bash
#!/bin/bash
   COMANDA 1
   . . .
   DARRERA COMANDA
# Sortirà amb l'estat de l'última comanda.
exit $?
```

```bash
#!/bin/bash
   COMANDA 1
   . . .
   DARRERA COMANDA
# Sortirà amb l'estat de l'última comanda.
```

El paràmetre ***``$?````*** conté el ***```codi de sortida```*** de l’última ordre executada.

Després de finalitzar un ***```script```***, un ***```$?```*** (***```$?```*** des de la línia d’ordres es dóna el ***```codi de sortida```*** (l’***```estat de sortida```*** de l'***```script```***, és a dir, l’última ordre executada en el ***```script```***, que és, per convenció, ***```0```*** èxit o un nombre enter diferent de ***```0```*** en el rang ***```0```*** – ***```255```*** per error.

## Exemple

```bash
#!/bin/bash
 
echo hola
echo $?    # L'estat de sortida 0 tornat perquè la comanda s'ha executat correctament.
 
lskdf      # Comandament no reconegut.
echo $?    # L'estat de sortida que NO és zero: la comanda no s'ha pogut executar.
 
echo
 
exit 113   # Tornarà 113 al shell.
           # Per verificar-ho, escriviu "echo $?" després que finalitzi el guió.
 
# Per convenció, una "exit 0" indica un èxit,
# + mentre que un valor de sortida diferent de zero significa un error o condició anòmala.
```
