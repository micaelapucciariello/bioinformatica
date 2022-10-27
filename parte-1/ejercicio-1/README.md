## Consigna
 *Escribir un script que lea una o más secuencias (de nucleótidos) de un archivo que contenga la información en formato GenBank de un mRNA de su gen (o genes) de interés, las traduzca a sus secuencias de amino ácidos posibles (tener en cuenta los Reading Frames) y escriba los resultados en un archivo en formato FASTA. Ustedes deben generarse su archivo GenBank de secuencias input, por ejemplo realizando una consulta de los mRNA del gen INS (que está asociado a la Diabetes) en la base de datos de NCBI-Gene y obtener uno o más resultados en formato GenBank en un archivo de texto. Si no desean seguir trabajando con las seis secuencias de aa posibles, pueden utilizar alguna función o programa que les permita saber cual el es marco de lectura correcto y seguir con esa secuencia.*

## Dependencias
Es necesario contar con un SO linux y tener instalados los componentes perl y bioperl. Se puede realizar la instalación con los siguientes comandos:
- Perl (`sudo apt-get install perl`)
- BioPerl (`sudo apt-get install bioperl`)

## Ejecución
Para ejecutar el sistema es necesario desplazarse al directorio *parte-1/ejercicio-1/* y correr el siguiente comando:
```
perl Ex1.pl ./sequence.gb out
```

## Resultados
La ejecución del script da como resultado la generación de 6 archivos `FASTA`, nombrados `out-<frame>.fasta` y `out-<frame>-rev.fasta`. 

## Comentarios
El archivo genbank utilizado fue obtenido del siguiente link: https://www.ncbi.nlm.nih.gov/nuccore/NC_000006.12?report=genbank&from=32659467&to=32666657&strand=true