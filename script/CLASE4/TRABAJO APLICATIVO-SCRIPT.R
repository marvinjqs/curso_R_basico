#####################
# TRABAJO APLICATIVO
#####################

# PREGUNTA 1

vector <- as.numeric(readline(prompt="Ingrese el número a analizar: "))

fun_par_impar <- function(x){
  if(x%%2 == 0) {
    print(paste("EL NUMERO", x, "ES PAR"))
  } else {
    print(paste("EL NUMERO", x, "NO ES PAR"))
  }
}

fun_par_impar(vector)

# PREGUNTA 1

vector2 <- 2:5

par<-function(vec){
  for (i in 1:length(vec)){
    if (vec[i]%%2==0){
      print(paste(vec[i],"par"))
    }else{
      print(paste(vec[i],"impar"))
    }
  }
}

# PREGUNTA 2 

vector3 <- 1:7

sum_cuad<-function(vec){
  sum_elem <- 0
  for (i in 1:length(vec)){
    sum_elem <- sum_elem + vec[i]^2
   
  }
  return(print(paste("LA SUMA TOTAL DE CADA ELEMENTO AL CUADRADO ES:", sum_elem)))
}


# PREGUNTA 3

set.seed(123)
vector4 <- rnorm(15, mean = 25, sd = 0.75)

eca <-function(vec){
  for (i in 1:length(vec)){
    if (vec[i] > 25){
      print(paste("EL VALOR", vec[i], "NO CUMPLE CON EL ECA ESTABLECIDO"))
    }else{
      print(paste("EL VALOR", vec[i], " CUMPLE CON EL ECA ESTABLECIDO"))
    }
  }
}


