# Activitat 4: Script per donar d’alta un usuari.
## Objectiu
L’objectiu d’aquesta pràctica és realitzar un script en bash per donar d’alta un usuari al sistema operatiu. Aquest script donarà d’alta el nou usuari rebent les dades per paràmetres. Com a mínim rebrà un paràmetre amb el nom d’usuari.

Es considerarà els següents escenaris.
## Escenari 1: Només es rep un paràmetre.
Es considerarà, en aquest cas, que el paràmetre rebut serà el nom del nou usuari, i s’assumirà que aquest mateix nom és el nom del grup al qual es vol que pertanyi el nou usuari.

## Escenari 2: Se’n reben dos, o més, paràmetres.
En el cas en que es rebin dos paràmetres, o més, es considerarà que el primer dels paràmetres serà el nom del nou usuari a donar d’alta, i que el segon dels paràmetre, és el nom del grup al qual es vol que pertanyi el nou usuari.


# Codis de sortida
En qualsevol dels casos, caldrà comprovar si el nom del nou usuari i el nom del grup rebut existeixen.

## Codi de Sortida => **`0`**
En el cas en el que l’usuari ens faciliti tota la informació i no tinguem cap problema per donar d’alta l’usuari, cap paràmetre, llavors mostrarem un missatge informant de que tot ha anat correctament.

I enviarem un Codi de Sortida amb un valor de **`0`**.

## Codi de Sortida => **`1`**
En el cas en el que l’usuari no ens faciliti cap paràmetre, llavors mostrarem un missatge d’ajuda, indicant que cal que com a mínim ens faciliti un paràmetre.

I enviarem un Codi de Sortida amb un valor d’**`1`**.

## Codi de Sortida => **`2`**
En el cas en el que l’usuari ens faciliti com a nom del nou usuari el d’un usuari que ja existeix, llavors mostrarem un missatge d’error en que comunicarem que l’usuari ja existeix.

I enviarem un Codi de Sortida amb un valor de **`2`**.

Primera versió creaUsuari_v1.sh
Crearem un script que ens mostrarà un missatge en funció dels paràmetres que ens hagi passat l’usuari. Tot indicant quins haguessin estat els valor que haguéssim fet servir com a nom d’usuari i com a nom de grup en cada cas.

És a dir:

tornarà un missatge d’ajuda si no ens ha facilitat cap paràmetre i enviarem un codi sortida 1,
tornarà un missatge indicant el nom d’usuari i el nom del grup si només ens ha facilitat un paràmetre i enviarem un codi sortida 2.
tornarà un missatge indicant el nom d’usuari i el nom del grup si ens ha facilitat dos paràmetre i enviarem un codi sortida 3.
