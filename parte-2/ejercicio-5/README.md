## Consigna
Escribir un script que llame a algún programa EMBOSS para que realice algún análisis sobre la una secuencia de nucleótidos fasta (del Ej. 1). Por ejemplo, que calcule los ORFs y obtenga las secuencias de proteínas posibles. Luego bajar las bases de datos PROSITE (archivo prosite.dat) de dominios/motivos funcionales conocidos, por medio del llamado a otro programa EMBOSS realizar el análisis de dominios de las secuencias de aminoácidos obtenidas y escribir los resultados en un archivo de salida.

## Dependencias
- Perl (sudo apt-get install perl)
- BioPerl (sudo apt-get install bioperl)
- EMBOSS
- PROSITE


## Ejecución
Es necesario ejecutar el siguiente comando para instalar prosite
```
sh ./setupProsite.sh
```
Luego ejecutar
```
perl Ex5.pl 0.fasta
sh ./Ex5-patmatmotifs.sh
```

## Resultados
Como resultado se obtendrá un archivo *0.fasta.emboss* con los resultados de la secuencias de ácidos nucléicos que tienen más probabilidad de coincidencia con el *archivo 0.fasta* obtenido en el ejercicio 1.
En una segunda instancia, se generará el archivo 0.patmatmotifs, que permite distinguir los motivos o dominios que posee la proteina codificada.

## Comentarios
Para resolver este punto tomamos como referencia la documentacion de BioPerl:
https://www.cs.huji.ac.il/course/2008/76552/BioPerl/bptutorial.html