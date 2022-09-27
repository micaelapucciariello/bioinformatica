## Consigna
Escribir un script que realice un BLAST de una o varias secuencias (si son varias se realiza un Blast por cada secuencia input) y escriba el resultado (blast output) en un archivo. Se puede ejecutar BLAST de manera remota o bien localmente.

## Dependencias
Para poder ejecutar el script-2 es necesario instalar los siguientes componentes y contar con un sistema operativo Linux, como en el punto anterior.
- Perl (`sudo apt-get install perl`)
- BioPerl (`sudo apt-get install bioperl`)
- BLAST (Basic Local Alignment Search Tool) es un programa informático capaz de comparar una secuencia de ADN, ARN o proteínas contra una gran cantidad de secuencias que se encuentren en una base de datos. Para su instalación ejecutar los siguientes comandos:
 `wget http://ftp.br.debian.org/debian/pool/main/n/ncbi-blast+/ncbi-blast+_2.8.1-1+deb10u1_amd64.deb` para descargar el programa, una vez descargado se instala con el comando `sudo dpkg -i ncbi-blast+_2.8.1-1+deb10u1_amd64.deb` en el directorio donde se encuentre el archivo *.deb*.
- db: Ejecutar el siguiente comando para descargar la base de datos`wget ftp://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz`, posteriormente, se descomprime y sobre el archivo swissport obtenido se ejecuta el comando `/bin/makeblastdb`.


## Ejecución
Para ejecutar el script ejecutar sobre *parte-1/ejercicio-2/* el comando 
```
perl script2.pl ./sequence.gb out
```

## Resultados
Como resultado obtenemos 12 archivos *.out* dado que procesamos los 6 archivos fasta generados en el punto 1, de manera local y de forma remota. La salida generada aporta información sobre la secuencia de aminoacidos de entrada, siempre y cuando esta sea válida.