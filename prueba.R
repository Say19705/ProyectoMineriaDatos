

library(haven)
#"C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2009.sav"
#"C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2010.sav"
#"C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2011.sav"
#"C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2012.sav"
#"C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2013.sav"
#"C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2014.sav"
#"C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2015.sav"
#"C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2016.sav"
#"C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2017.sav"
#"C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2018.sav"
#"C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2019.sav"
 #para no borrar todos las rutas y ponerlas pueden crear sus propios path y solo seleccionar mi bloque y poner ctrl+shift+c 
path2009 = file.path("C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2009.sav")
path2010 = file.path("C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2010.sav")
path2011 = file.path("C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2011.sav")
path2012 = file.path("C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2012.sav")
path2013 = file.path("C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2013.sav")
path2014 = file.path("C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2014.sav")
path2015 = file.path("C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2015.sav")
path2016 = file.path("C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2016.sav")
path2017 = file.path("C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2017.sav")
path2018 = file.path("C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2018.sav")
path2019 = file.path("C:/Users/andre/OneDrive/Documentos/3er año/1er semestre/Minería de datos/proyecto/ProyectoMineriaDatos/datosMat2019.sav")

datos2009 <- read_sav(path2009)
datos2010 <- read_sav(path2010)
datos2011 <- read_sav(path2011)
datos2012 <- read_sav(path2012)
datos2013 <- read_sav(path2013)
datos2014 <- read_sav(path2014)
datos2015 <- read_sav(path2015)
datos2016 <- read_sav(path2016)
datos2017 <- read_sav(path2017)
datos2018 <- read_sav(path2018)
datos2019 <- read_sav(path2019)


#cnames <- colnames(datos2010)
#mayu2010 = c()

#for (i in 1:length(cnames)){
#  mayu2010[i] <- toupper(cnames[i])  
#}

#colnames(datos2010)<-mayu2010
#View(datos2010)

  
#Hacer tabla 2019 igual
#AREAGOCU <- rnorm(nrow(datos2019))
#datos2019 <- cbind(datos2019, AREAGOCU)
#datos2019$AREAGOCU <- "None"
#View(datos2019)

