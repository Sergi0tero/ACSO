echo escriba el shell que desea ejecutar;
echo 1 para encontrar el numero de lineas del archivo;
echo 2 para buscar una palabra en un archivo (ingresar palabra y ubicacion del archivo);
echo 3 para ver los usuarios con sus respectivas descripciones;
echo 4 para ver la lista de los archivos de un directorio con unos permisos espesificados (ingresar directorio y permisos);
echo 0 para terminar el programa;

read entrada;
while [[ $entrada ]]; 
do
	case $entrada in
		1)
			echo "punto 1";
			bash punto1.sh;
		;;
		2)
			echo "punto 2";
			read a;
			read b;
			bash buscar_palabra.sh $a $b;
		;;
		3)
			echo "punto 3";
			bash punto3.sh;
		;;
		4)
			echo "punto 4";
			read a;
			read b;
			bash punto4.sh $a $b;
		;;
		0)
			exit 0
		;;
		*)
			echo "Entrada invalida";
		;;
	esac
read entrada;
done