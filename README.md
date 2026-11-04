# Tema 9: Retos Avanzados (secondarysort y join) 
 
## 1. Explicacion y Casos de Uso Real 
* **secondarysort:** Permite ordenar los valores recibidos en la fase de Reduce por una segunda clave/valor en Shuffle y Sort. 
  * *Caso real:* Listar transacciones bancarias ordenadas cronologicamente por cliente. 
* **join:** Combina dos o mas datasets almacenados en HDFS mediante una clave comun (similar al INNER JOIN de SQL). 
  * *Caso real:* Cruzar transacciones de ventas con el catalogo de nombres de productos. 
 
## 2. Guia de Reproduccion 
1. Copiar datos al contenedor: `docker cp datos/ hadoop:/tmp/datos/` 
2. Entrar al contenedor: `docker exec -it hadoop bash` 
3. Ejecutar trabajos MapReduce en HDFS. 
