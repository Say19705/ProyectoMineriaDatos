

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




library(haven)


#Se usarán como estandar las bases de 2015,2016,2017 /no se si colocar las columnas

#----------------Modificaciones 2009 -------------------
#Crear columnas en dataset 2009 ESCHOM, ESCMUJ y DIAOCU
ESCHOM <- rnorm(nrow(datos2009))
datos2009 <- cbind(datos2009, ESCHOM)
datos2009$ESCHOM <- "None"

ESCMUJ <- rnorm(nrow(datos2009))
datos2009 <- cbind(datos2009, ESCMUJ)
datos2009$ESCMUJ <- "None"

DIAOCU <- rnorm(nrow(datos2009))
datos2009 <- cbind(datos2009, DIAOCU)
datos2009$DIAOCU <- "None"
#View(datos2009)

#cambiar los nombres de NUPHON, NUPMUJ a NUNUHO, NUNUMU 2009
cnames <- colnames(datos2009)
nombresN = c()
for(i in 1:length(cnames)){
  if(cnames[i] == "NUPHON"){
    nombresN[i] <- "NUNUHO"
  }
  else if(cnames[i] == "NUPMUJ"){
    nombresN[i] <- "NUNUMU"
  }
  else{
    nombresN[i] <- cnames[i]
  }
}
colnames(datos2009) <- nombresN

#cambiar AREAG por AREAGOCU, OCUHOM, OCUMUJ por CIUOHOM, CIUOMUJ
cnames <- colnames(datos2009)
nombresN = c()
for(i in 1:length(cnames)){
  if(cnames[i] == "AREAG"){
    nombresN[i] <- "AREAGOCU"
  }
  else if(cnames[i] == "OCUHOM"){
    nombresN[i] <- "CIUOHOM"
  }
  else if(cnames[i] == "OCUMUJ"){
    nombresN[i] <- "CIUOMUJ"
  }
  else{
    nombresN[i] <- cnames[i]
  }
}
colnames(datos2009) <- nombresN

datos2009$AÑOREG <- ifelse(datos2009$AÑOREG == 9, 2009, datos2009$AÑOREG)
datos2009$AÑOREG <- ifelse(datos2009$AÑOREG == 10, 2010, datos2009$AÑOREG)
datos2009$AÑOOCU <- ifelse(datos2009$AÑOOCU == 9, 2009, datos2009$AÑOOCU)
datos2009$AÑOOCU <- ifelse(datos2009$AÑOOCU == 10, 2010, datos2009$AÑOOCU)
#-----------------------Modificaciones 2010--------------------
#Crear columnas en dataset 2010 NUNUHO, NUNUMU
NUNUHO <- rnorm(nrow(datos2010))
datos2010 <- cbind(datos2010,NUNUHO)
datos2010$NUNUHO <- "None"

NUNUMU <- rnorm(nrow(datos2010))
datos2010 <- cbind(datos2010, NUNUMU)
datos2010$NUNUMU <- "None"

#Poner todas en uppercase 2010
cnames <- colnames(datos2010)
mayu2010 = c()

for (i in 1:length(cnames)){
  mayu2010[i] <- toupper(cnames[i])  
}

colnames(datos2010)<-mayu2010

#cambiar AREAG por AREAGOCU, OCUHOM, OCUMUJ
cnames <- colnames(datos2010)
nombresN = c()
for(i in 1:length(cnames)){
  if(cnames[i] == "AREAG"){
    nombresN[i] <- "AREAGOCU"
  }
  else if(cnames[i] == "OCUHOM"){
    nombresN[i] <- "CIUOHOM"
  }
  else if(cnames[i] == "OCUMUJ"){
    nombresN[i] <- "CIUOMUJ"
  }
  else{
    nombresN[i] <- cnames[i]
  }
}
colnames(datos2010) <- nombresN
#---------------------Modificaciones 2011----------------------
#Crear columnas en dataset 2011 NUNUHO, NUNUMU
NUNUHO <- rnorm(nrow(datos2011))
datos2011 <- cbind(datos2011,NUNUHO)
datos2011$NUNUHO <- "None"

NUNUMU <- rnorm(nrow(datos2011))
datos2011 <- cbind(datos2011, NUNUMU)
datos2011$NUNUMU <- "None"


#Poner todas en uppercase 2011
cnames <- colnames(datos2011)
mayu2011 = c()

for (i in 1:length(cnames)){
  mayu2011[i] <- toupper(cnames[i])  
}

colnames(datos2011)<-mayu2011

#cambiar AREAG por AREAGOCU OCUHOM, OCUMUJ
cnames <- colnames(datos2011)
nombresN = c()
for(i in 1:length(cnames)){
  if(cnames[i] == "AREAG"){
    nombresN[i] <- "AREAGOCU"
  }
  else if(cnames[i] == "OCUHOM"){
    nombresN[i] <- "CIUOHOM"
  }
  else if(cnames[i] == "OCUMUJ"){
    nombresN[i] <- "CIUOMUJ"
  }
  else{
    nombresN[i] <- cnames[i]
  }
}
colnames(datos2011) <- nombresN
#-------------------------Modificaciones 2012------------------------
#Crear columnas en dataset 2012 AÑOOCU, NUNUHO, NUNUMU
AÑOOCU <- rnorm(nrow(datos2012))
datos2012 <- cbind(datos2012, AÑOOCU)
datos2012$AÑOOCU <- "None"

NUNUHO <- rnorm(nrow(datos2012))
datos2012 <- cbind(datos2012,NUNUHO)
datos2012$NUNUHO <- "None"

NUNUMU <- rnorm(nrow(datos2012))
datos2012 <- cbind(datos2012, NUNUMU)
datos2012$NUNUMU <- "None"

#View(datos2012)

#cambiar AREAG por AREAGOCU, OCUHOM, OCUMUJ
cnames <- colnames(datos2012)
nombresN = c()
for(i in 1:length(cnames)){
  if(cnames[i] == "AREAG"){
    nombresN[i] <- "AREAGOCU"
  }
  else if(cnames[i] == "OCUHOM"){
    nombresN[i] <- "CIUOHOM"
  }
  else if(cnames[i] == "OCUMUJ"){
    nombresN[i] <- "CIUOMUJ"
  }
  else{
    nombresN[i] <- cnames[i]
  }
}
colnames(datos2012) <- nombresN

View(datos2012)
#------------------------Modificaciones 2013------------------------
#Crear columnas en dataset 2013 AÑOOCU, NUNUHO, NUMUNU
AÑOOCU <- rnorm(nrow(datos2013))
datos2013 <- cbind(datos2013, AÑOOCU)
datos2013$AÑOOCU <- "None"

NUNUHO <- rnorm(nrow(datos2013))
datos2013 <- cbind(datos2013,NUNUHO)
datos2013$NUNUHO <- "None"

NUNUMU <- rnorm(nrow(datos2013))
datos2013 <- cbind(datos2013, NUNUMU)
datos2013$NUNUMU <- "None"


#hacer la división del 2013
#PUEHOM
datos2013$PUEHOM <- ifelse(datos2013$PUEHOM ==  2,1,datos2013$PUEHOM)
datos2013$PUEHOM <- ifelse(datos2013$PUEHOM ==  3,1,datos2013$PUEHOM)
datos2013$PUEHOM <- ifelse(datos2013$PUEHOM ==  5,1,datos2013$PUEHOM)
datos2013$PUEHOM <- ifelse(datos2013$PUEHOM ==  4,2,datos2013$PUEHOM)

#PUEMUJ
datos2013$PUEMUJ <- ifelse(datos2013$PUEMUJ ==  2,1,datos2013$PUEMUJ)
datos2013$PUEMUJ <- ifelse(datos2013$PUEMUJ ==  3,1,datos2013$PUEMUJ)
datos2013$PUEMUJ <- ifelse(datos2013$PUEMUJ ==  5,1,datos2013$PUEMUJ)
datos2013$PUEMUJ <- ifelse(datos2013$PUEMUJ ==  4,2,datos2013$PUEMUJ)

#cambiar los nombres de PUEHOM Y PUEMUJ a GETHOM GETMUJ
cnames <- colnames(datos2013)
nombresN = c()
for(i in 1:length(cnames)){
  if(cnames[i] == "PUEHOM"){
    nombresN[i] <- "GETHOM"
  }
  else if(cnames[i] == "PUEMUJ"){
    nombresN[i] <- "GETMUJ"
  }
  else{
    nombresN[i] <- cnames[i]
  }
}
colnames(datos2013) <- nombresN

View(datos2013)


#-----------------------Modificaciones 2014---------------------------
#Crear columnas en dataset 2014 AÑOOCU, NUNUHO, NUNUMU
AÑOOCU <- rnorm(nrow(datos2014))
datos2014 <- cbind(datos2014, AÑOOCU)
datos2014$AÑOOCU <- "None"

NUNUHO <- rnorm(nrow(datos2014))
datos2014 <- cbind(datos2014,NUNUHO)
datos2014$NUNUHO <- "None"

NUNUMU <- rnorm(nrow(datos2014))
datos2014 <- cbind(datos2014, NUNUMU)
datos2014$NUNUMU <- "None"

#hacer la división del 2014
#PUEHOM
datos2014$PUEHOM <- ifelse(datos2014$PUEHOM ==  2,1,datos2014$PUEHOM)
datos2014$PUEHOM <- ifelse(datos2014$PUEHOM ==  3,1,datos2014$PUEHOM)
datos2014$PUEHOM <- ifelse(datos2014$PUEHOM ==  5,1,datos2014$PUEHOM)
datos2014$PUEHOM <- ifelse(datos2014$PUEHOM ==  4,2,datos2014$PUEHOM)

#PUEMUJ
datos2014$PUEMUJ <- ifelse(datos2014$PUEMUJ ==  2,1,datos2014$PUEMUJ)
datos2014$PUEMUJ <- ifelse(datos2014$PUEMUJ ==  3,1,datos2014$PUEMUJ)
datos2014$PUEMUJ <- ifelse(datos2014$PUEMUJ ==  5,1,datos2014$PUEMUJ)
datos2014$PUEMUJ <- ifelse(datos2014$PUEMUJ ==  4,2,datos2014$PUEMUJ)

#cambiar los nombres de PUEHOM Y PUEMUJ a GETHOM GETMUJ
cnames <- colnames(datos2014)
nombresN = c()
for(i in 1:length(cnames)){
  if(cnames[i] == "PUEHOM"){
    nombresN[i] <- "GETHOM"
  }
  else if(cnames[i] == "PUEMUJ"){
    nombresN[i] <- "GETMUJ"
  }
  else{
    nombresN[i] <- cnames[i]
  }
}
colnames(datos2014) <- nombresN
#-------------------Modificaciones 2015--------------------------
#hacer la división del 2015
#PUEHOM
datos2015$PUEHOM <- ifelse(datos2015$PUEHOM ==  2,1,datos2015$PUEHOM)
datos2015$PUEHOM <- ifelse(datos2015$PUEHOM ==  3,1,datos2015$PUEHOM)
datos2015$PUEHOM <- ifelse(datos2015$PUEHOM ==  5,1,datos2015$PUEHOM)
datos2015$PUEHOM <- ifelse(datos2015$PUEHOM ==  4,2,datos2015$PUEHOM)

#PUEMUJ
datos2015$PUEMUJ <- ifelse(datos2015$PUEMUJ ==  2,1,datos2015$PUEMUJ)
datos2015$PUEMUJ <- ifelse(datos2015$PUEMUJ ==  3,1,datos2015$PUEMUJ)
datos2015$PUEMUJ <- ifelse(datos2015$PUEMUJ ==  5,1,datos2015$PUEMUJ)
datos2015$PUEMUJ <- ifelse(datos2015$PUEMUJ ==  4,2,datos2015$PUEMUJ)

#cambiar los nombres de PUEHOM Y PUEMUJ a GETHOM GETMUJ
cnames <- colnames(datos2015)
nombresN = c()
for(i in 1:length(cnames)){
  if(cnames[i] == "PUEHOM"){
    nombresN[i] <- "GETHOM"
  }
  else if(cnames[i] == "PUEMUJ"){
    nombresN[i] <- "GETMUJ"
  }
  else{
    nombresN[i] <- cnames[i]
  }
}
colnames(datos2015) <- nombresN
#-------------------Modificaciones 2016--------------------------
#hacer la división del 2016
#PUEHOM
datos2016$PUEHOM <- ifelse(datos2016$PUEHOM ==  2,1,datos2016$PUEHOM)
datos2016$PUEHOM <- ifelse(datos2016$PUEHOM ==  3,1,datos2016$PUEHOM)
datos2016$PUEHOM <- ifelse(datos2016$PUEHOM ==  5,1,datos2016$PUEHOM)
datos2016$PUEHOM <- ifelse(datos2016$PUEHOM ==  4,2,datos2016$PUEHOM)

#PUEMUJ
datos2016$PUEMUJ <- ifelse(datos2016$PUEMUJ ==  2,1,datos2016$PUEMUJ)
datos2016$PUEMUJ <- ifelse(datos2016$PUEMUJ ==  3,1,datos2016$PUEMUJ)
datos2016$PUEMUJ <- ifelse(datos2016$PUEMUJ ==  5,1,datos2016$PUEMUJ)
datos2016$PUEMUJ <- ifelse(datos2016$PUEMUJ ==  4,2,datos2016$PUEMUJ)

#cambiar los nombres de PUEHOM Y PUEMUJ a GETHOM GETMUJ
cnames <- colnames(datos2016)
nombresN = c()
for(i in 1:length(cnames)){
  if(cnames[i] == "PUEHOM"){
    nombresN[i] <- "GETHOM"
  }
  else if(cnames[i] == "PUEMUJ"){
    nombresN[i] <- "GETMUJ"
  }
  else{
    nombresN[i] <- cnames[i]
  }
}
colnames(datos2016) <- nombresN
#-------------------Modificaciones 2017--------------------------
#hacer la división del 2017
#PUEHOM
datos2017$PUEHOM <- ifelse(datos2017$PUEHOM ==  2,1,datos2017$PUEHOM)
datos2017$PUEHOM <- ifelse(datos2017$PUEHOM ==  3,1,datos2017$PUEHOM)
datos2017$PUEHOM <- ifelse(datos2017$PUEHOM ==  5,1,datos2017$PUEHOM)
datos2017$PUEHOM <- ifelse(datos2017$PUEHOM ==  4,2,datos2017$PUEHOM)

#PUEMUJ
datos2017$PUEMUJ <- ifelse(datos2017$PUEMUJ ==  2,1,datos2017$PUEMUJ)
datos2017$PUEMUJ <- ifelse(datos2017$PUEMUJ ==  3,1,datos2017$PUEMUJ)
datos2017$PUEMUJ <- ifelse(datos2017$PUEMUJ ==  5,1,datos2017$PUEMUJ)
datos2017$PUEMUJ <- ifelse(datos2017$PUEMUJ ==  4,2,datos2017$PUEMUJ)

#cambiar los nombres de PUEHOM Y PUEMUJ a GETHOM GETMUJ
cnames <- colnames(datos2017)
nombresN = c()
for(i in 1:length(cnames)){
  if(cnames[i] == "PUEHOM"){
    nombresN[i] <- "GETHOM"
  }
  else if(cnames[i] == "PUEMUJ"){
    nombresN[i] <- "GETMUJ"
  }
  else{
    nombresN[i] <- cnames[i]
  }
}
colnames(datos2017) <- nombresN
#-------------------Modificaciones 2018--------------------------
#Crear columna AREAGOCU en dataset 2018
AREAGOCU <- rnorm(nrow(datos2018))
datos2018 <- cbind(datos2018, AREAGOCU)
datos2018$AREAGOCU <- "None"

#PUEHOM
datos2018$PUEHOM <- ifelse(datos2018$PUEHOM ==  2,1,datos2018$PUEHOM)
datos2018$PUEHOM <- ifelse(datos2018$PUEHOM ==  3,1,datos2018$PUEHOM)
datos2018$PUEHOM <- ifelse(datos2018$PUEHOM ==  5,1,datos2018$PUEHOM)
datos2018$PUEHOM <- ifelse(datos2018$PUEHOM ==  4,2,datos2018$PUEHOM)

#PUEMUJ
datos2018$PUEMUJ <- ifelse(datos2018$PUEMUJ ==  2,1,datos2018$PUEMUJ)
datos2018$PUEMUJ <- ifelse(datos2018$PUEMUJ ==  3,1,datos2018$PUEMUJ)
datos2018$PUEMUJ <- ifelse(datos2018$PUEMUJ ==  5,1,datos2018$PUEMUJ)
datos2018$PUEMUJ <- ifelse(datos2018$PUEMUJ ==  4,2,datos2018$PUEMUJ)

#cambiar los nombres de PUEHOM Y PUEMUJ a GETHOM GETMUJ
cnames <- colnames(datos2018)
nombresN = c()
for(i in 1:length(cnames)){
  if(cnames[i] == "PUEHOM"){
    nombresN[i] <- "GETHOM"
  }
  else if(cnames[i] == "PUEMUJ"){
    nombresN[i] <- "GETMUJ"
  }
  else{
    nombresN[i] <- cnames[i]
  }
}
colnames(datos2018) <- nombresN
#-------------------Modificaciones 2019--------------------------
#Crear columna AREAGOCU en dataset 2019
AREAGOCU <- rnorm(nrow(datos2019))
datos2019 <- cbind(datos2019, AREAGOCU)
datos2019$AREAGOCU <- "None"

#PUEHOM
datos2019$PUEHOM <- ifelse(datos2019$PUEHOM ==  2,1,datos2019$PUEHOM)
datos2019$PUEHOM <- ifelse(datos2019$PUEHOM ==  3,1,datos2019$PUEHOM)
datos2019$PUEHOM <- ifelse(datos2019$PUEHOM ==  5,1,datos2019$PUEHOM)
datos2019$PUEHOM <- ifelse(datos2019$PUEHOM ==  4,2,datos2019$PUEHOM)

#PUEMUJ
datos2019$PUEMUJ <- ifelse(datos2019$PUEMUJ ==  2,1,datos2019$PUEMUJ)
datos2019$PUEMUJ <- ifelse(datos2019$PUEMUJ ==  3,1,datos2019$PUEMUJ)
datos2019$PUEMUJ <- ifelse(datos2019$PUEMUJ ==  5,1,datos2019$PUEMUJ)
datos2019$PUEMUJ <- ifelse(datos2019$PUEMUJ ==  4,2,datos2019$PUEMUJ)

#cambiar los nombres de PUEHOM Y PUEMUJ a GETHOM GETMUJ
cnames <- colnames(datos2019)
nombresN = c()
for(i in 1:length(cnames)){
  if(cnames[i] == "PUEHOM"){
    nombresN[i] <- "GETHOM"
  }
  else if(cnames[i] == "PUEMUJ"){
    nombresN[i] <- "GETMUJ"
  }
  else{
    nombresN[i] <- cnames[i]
  }
}
colnames(datos2019) <- nombresN
#----------------------------------------------------------------

#Ver databeses
# View(datos2009)
# View(datos2010)
# View(datos2011)
# View(datos2012)
# View(datos2013)
# View(datos2014)
# View(datos2015)
# View(datos2016)
# View(datos2017)
# View(datos2018)
# View(datos2019)
#---------- Ya con todas las bases con las mismas columnas (cant columnas y nombres) podemos unirlas 
datos2009 <- datos2009 %>%
  mutate_if(is.labelled,list(as_factor))
datos2010 <- datos2010 %>%
  mutate_if(is.labelled,list(as_factor))
datos2011 <- datos2011 %>%
  mutate_if(is.labelled,list(as_factor))
datos2012 <- datos2012 %>%
  mutate_if(is.labelled,list(as_factor))
datos2013 <- datos2013 %>%
  mutate_if(is.labelled,list(as_factor))
datos2014 <- datos2014 %>%
  mutate_if(is.labelled,list(as_factor))
datos2015 <- datos2015 %>%
  mutate_if(is.labelled,list(as_factor))
datos2016 <- datos2016 %>%
  mutate_if(is.labelled,list(as_factor))
datos2017 <- datos2017 %>%
  mutate_if(is.labelled,list(as_factor))
datos2018 <- datos2018 %>%
  mutate_if(is.labelled,list(as_factor))
datos2019 <- datos2019 %>%
  mutate_if(is.labelled,list(as_factor))

l = list(datos2009,datos2010,datos2011,datos2012,datos2013,datos2014,datos2015,datos2016,datos2017,datos2018,datos2019)
datosMatrimonio <- do.call("rbind",l)

View(datosMatrimonio)


