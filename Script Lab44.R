#------------------------LABORATORIO 44----------------------------
#----------ACADÉMICO: CARLA CAROLINA PÉREZ HERNÁNDEZ---------------
#----------------ALUMNA: ANA GRISEL SANJUAN MERIDA-----------------
#----------MAPAS DE CALOR CON OTROS DATOS Y FUNCIONES-------------


#Base de datos: mtcars de la paquetería de R
#Caractarísticas de autos que no están normalizadas
?mtcars

#Llamamos a la base de datos
mtcars
#Se muetras las caracteríticas de los autos

#Para saber qué tipo de datos se tienen
class(mtcars)
#Es un dataframe

#Para los mapas de calor, es necesario una matriz
#Matriz llamada mtcars, signo de asignación
#Los datos se tomarán del dataframe
mtcars_matrix <- data.matrix(mtcars)
#En el entorno de variables (environment) se puede visualizar la matriz

#Para corroborar la clase de archivo que es
class(mtcars_matrix)

#Primer mapa de calor
heatmap(mtcars_matrix)

#Conociendo más de los algoritmos de heatmap
?heatmap
#Se pueden ver los elementos del paquete

#Segundo mapa de calor con prinicipal atención en las columnas
#Llamamos al función heatmap
heatmap(mtcars_matrix, scale="colum")

#Es importante considerar la paleta de colores para identificar las similaridades y/o disimilaridades


#Propia paleta de colores
#La paleta de llemara colores_blue
#Los valores más altos serán dibujados con el azul más intenso
#Se puede ver en el environment
colores_blue <- colorRampPalette(c("lightblue", "cornflowerblue", "navyblue" ))(256)

#Creando mapa de calor con paleta de color colores_blue
heatmap(mtcars_matrix, 
        scale="colum",
        col=colores_blue)

#Eliminar el dendrograma horizontal, es decir, las características de los autos
#debido a que no tenemos datos normalizados
#La función Colv permite quitar el vector de las columnas
#Agregamos etiquetas al eje de las X: especificación de características"
#Etiquea del eje de las Y: modelo s de autos
#El título es Mapa de calor
heatmap(mtcars_matrix, 
        scale="colum",
        col=colores_blue,
        Colv = NA,
        margins= c(5,10),
        xlab="especificación de características",
        ylab="modelos de autos",
        main="mapa de calor")

#Para corroborar la matriz, se corre:
mtcars_matrix
colnames(mtcars_matrix)

#Para volver a cambiar el color 
library(viridis)

#Llamamos a la paleta
heatmap(mtcars_matrix, 
        scale="colum",
        col=colores_blue)

#Eliminar el dendrograma horizontal, es decir, las características de los autos
#debido a que no tenemos datos normalizados
#La función Colv permite quitar el vector de las columnas
#Agregamos etiquetas al eje de las X: especificación de características"
#Etiquea del eje de las Y: modelos de autos
#El título es Mapa de calor
# Paleta de color viridis opción viridis
heatmap(mtcars_matrix, 
        scale="colum",
        col=viridis_pal(option="viridis") (6),
        Colv = NA,
        margins= c(5,10),
        xlab="especificación de características",
        ylab="modelos de autos",
        main="mapa de calor")

# Paleta de color viridis opción magma
heatmap(mtcars_matrix, 
        scale="colum",
        col=viridis_pal(option="magma") (6),
        Colv = NA,
        margins= c(5,10),
        xlab="especificación de características",
        ylab="modelos de autos",
        main="mapa de calor")

# Paleta de color rainbow
heatmap(mtcars_matrix, 
        scale="colum",
        col=rainbow (6),
        Colv = NA,
        margins= c(5,10),
        xlab="especificación de características",
        ylab="modelos de autos",
        main="mapa de calor")


#Para conocer los valores de los colores altos y bajos
#El color más bajo es rojo y el más alto es el rosa
colnames(mtcars_matrix)
image(1:6,1,as.matrix(1:6), col=rainbow(6), xlab = "Leyenda", ylab="", xaxt="n", yaxt="n", bty="n")

#---------------FIN DE LABORATORIO 44---------
