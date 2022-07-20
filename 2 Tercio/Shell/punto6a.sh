read entrada;
if [[ -d "$entrada" ]]; then
	echo "${entrada} es subdirectorio";
elif [[ -f "$entrada" ]]; then
	echo "${entrada} es un archivo";
else
	echo "${entrada} no es un archivo ni un subdirectorio"
fi