#################################
# OPERADORES Y DECLARACIONES EN R - EJERCICIOS
# CURSO: PROGRAMACIÓN CON R
# Marvin J. Quispe Sedano
# Email: marvinjqs@gmail.com
#################################


#---------------------------------------------------------
# Para limpiar la consola:
# TeclaS :  Ctrl + L

# Para limpiar el workspace:
rm(list = ls())


##############
# OPERADORES
#############

# OPERADORES MATEMATICOS

5+6

10-4

20*3

10/2

4^2

5%%2

NA*2 + 2 + 5*3

# OPERADORES RELACIONALES

3 < 5

2 <= 7

4 > 10

11 >= 7

a = 5
a == 3
a != 5

"bota" > "barco"

as.factor("bota") > "barco"

# OPERADORES LOGICOS

TRUE | FALSE

FALSE & FALSE

!TRUE

isTRUE(5)

!(TRUE | FALSE) | (TRUE | FALSE)

# OPERADORES DE ASIGNACION

valor <- 5 
valor = 5 

a <- 5
a <-10

a <- c(5,6,5)

assign("b", c(5,6,5))


##########################################
# INTRUCCIONES DE CONTROL O DECLARACIONES
##########################################

# IF

# CREAMOS UN OBJETO PARA LA APLICACION DE LA INSTRUCCION

x <- 4

if (x>5) {
  print("La operación se realizó con éxito")
  print("El número es mayor que 5")
}

####################

# ELSE

# CREAMOS UN OBJETO PARA LA APLICACION DE LA INSTRUCCION
x <- 1

if (x>5) {
  print("La operación se realizó con éxito")
  print("El número es mayor que 5")
} else{
  print("La operación no se realizó")
  print("El número es menor o igual que 5")
}

####################

# ELSE IF

# CREAMOS UN OBJETO PARA LA APLICACION DE LA INSTRUCCION
x <- 55

if (x > 6) {
  print("La operación se realizó con éxito")
  print(paste("El número es:", x))
} else if (x == 5) {
  print("La operación no se realizó")
  print("El número es igual a 5")
} else if (x == 6) {
  print("La operación no se realizó")
  print("El número es igual a 6")
} else {
  print("La operación no se realizó")
  print("El número es menor que 5") 
}


####################

# ELSE IF

# CREAMOS UN OBJETO PARA LA APLICACION DE LA INSTRUCCION
x <- 6

ifelse(x > 5, "El número es mayor que 5", "El número es menor o igual que 5")


####################

# FOR

# CREAMOS UN OBJETO PARA LA APLICACION DE LA INSTRUCCION

x <- c(20,15,17,18,20,25,26,29)

# CREAMOS UN VECTOR VACIO

vector <- c()


for (i in 1:length(x)) {
  z <- x[i]*2
  vector[i] <- z + i
  
  print(paste("EL NUMERO GUARDADO ES:", vector[i]))
  
}

print(vector)

####################

# WHILE

# CREAMOS UN OBJETO PARA LA APLICACION DE LA INSTRUCCION

x <- 1

while (x < 10) {
  x <- x + 1
  print(x)
}

####################

# REPEAT

# CREAMOS UN OBJETO PARA LA APLICACION DE LA INSTRUCCION

x <- 0

repeat {
  x <- x + 1
 
  print(x)
  
  if(x == 10) {
    break
  }
  
  
}

####################

# BREAK

# CREAMOS UN OBJETO PARA LA APLICACION DE LA INSTRUCCION

x <- c(20,15,17,18,20,25,26,29)

# CREAMOS UN VECTOR VACIO

vector <- c()

for (i in 1:length(x)) {
  if (i == 4){
    break
  }
  z <- x[i]*2
  vector[i] <- z + i
}

print(vector)

####################

# NEXT

# CREAMOS UN OBJETO PARA LA APLICACION DE LA INSTRUCCION

x <- c(20,15,17,18,20,25,26,29)

# CREAMOS UN VECTOR VACIO

vector <- c()
for (i in 1:length(x)) {
  if (i == 4){
    next
  }
  z <- x[i]*2
  vector[i] <- z + i
}
print(vector)


##############
# EJERCICIOS
#############

temp = 20.6

if (temp == 20.5) {
  print("Temperatura es correcta")
}else{
  print("Temperatura es incorrecta")
}

temp = c(23.5, 18.5, 20, 25, 26.3, 25.5)

for(x in temp){
  if (x >= 25) {
  print("Temperatura alta")
  } else{
  print("Temperatura baja")
  }
}

########################

library(svDialogs)

temp3 <- dlg_input("INGRESE EL VALOR DE TEMPERATURA: ")$res

#######################

temp <- as.numeric(dlg_input("INGRESE EL VALOR DE TEMPERATURA: ")$res)

if (temp == 20) {
  print("Temperatura es igual a 20°C")
} else if (temp == 25) {
  print("Temperatura es igual a 25°C")
} else {
  print(paste("Temperatura no es igual a 20°C, ni 25°C, su valor es igual a", as.character(temp),"°C"))
}

#######################

x <- 1

while (x < 10) {
 
  x <- x + 1
  print(paste("EL NUMERO ES:",x))
}

########################

# PROMEDIO DE LOS ELEMENTOS DE UN VECTOR

temp <- c(23.5, 18.5, 20, 25, 26.3, 25.5)
sum_elemtos <- 0

for (i in 1:length(temp)){
  sum_elemtos <- sum_elemtos + temp[i]
}

print(sum_elemtos/length(temp))

#######################

# SUMA DE CUADRADOS DE LOS ELEMENTOS DE UN VECTOR

vector1 <- c(2,4,6,5,7)
sum_cuadra <- 0

for (i in 1:length(vector1)){
  sum_cuadra <- sum_cuadra + vector1[i]^2
}

print(sum_cuadra)

#######################

# SUMA DE LOS ELEMENTOS DE UN VECTOR

suma <- 0
tmp <- c(20,25,15,24,16,29,19)
for (i in 1:length(tmp)) {
  suma=suma+tmp[i]
  
}

print(paste("La suma de los elementos es", as.character(suma)))
















