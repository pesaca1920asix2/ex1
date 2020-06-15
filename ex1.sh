#!/bin/bash
clear
if ((EUID != 0 ))
then
	echo"Aquest script s'ha d'executar com usuari root"
	exit 1
fi
opc"s"
while [[ $opc = "s" ]]
do
	clear
	echo-n "Dona el nom del usuari del sistema"
	read usuari
	echo-n "dona el nom del grup del sistema"
	read grup
	useradd -m -g grup $user
	usermod -a -g grup $user
	echo -n "Vols continuar?:"
	read opc
done
exit 10

