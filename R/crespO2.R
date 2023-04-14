#' C_resp value to oxygen consumption
#'
#' Calculates mass-specific oxygen consumption (mg O2/kg/h) from a C_resp value.
#'
#' @param C_resp (class numeric) A C_resp value - the proportion of metabolic carbon in a fish's blood.
#' Must be between 0 and 1.
#' @param C (class numeric) The upper bound of C_resp.
#' @param k (class numeric) The decay constant of the relationship between C_resp and oxygen consumption
#'
#' @return (class numeric) Oxygen consumption in mg O2/kg/h.
#' @export
#'
crespO2 <- function(C_resp, # The C_resp value
                    C, # Upper bound
                    k){ # Decay constant
  # Divide C_resp by upper bound
  a <- C_resp/C
  # Convert into oxygen consumption (mg O2/kg/h)
  mg_kg <- -(log(1-a)/k)
  return(mg_kg)
}
