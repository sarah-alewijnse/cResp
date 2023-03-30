#### C_resp value to oxygen consumption ####

crespO2 <- function(C_resp, C, k){
  a <- C_resp/C
  mg_kg <- -(log(1-a)/k)
  print(mg_kg)
}
