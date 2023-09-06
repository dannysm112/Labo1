#!/bin/bash

function get_permissions_verbose {
	string_permisos=$1
	usuario=${string_permisos:1:3}
	grupo=${string_permisos:4:3}
	otros=${string_permisos:7:3}
}

if [ -e $1 ]; then
	permisos=$(stat -c%a $1)
	echo $permisos
	get_permissions_verbose $permisos
else
	echo "El arhivo no existe"
fi
