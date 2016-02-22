#' Squaring Numbers
#'
#' @param x Must be a numeric object.
#'
#' @return Squares the values in the numeric object.
#' @export
#'
#' @examples
#' sq(c(1,3,5))
#' sq(1:10)
sq <- function(x){
  x^2
}

#' Power Function
#'
#' @param x Must be a numeric object.
#' @param power A numeric object called \code{power}.
#'
#' @return Raises the values in the numeric object \code{x} to the value in \code{power}.
#' @export
#'
#' @examples
#' RP(c(1, 3, 5), 3)
#' RP(x = c(1, 3, 5), power = 3)
#' RP(power = 3, x = c(1, 3, 5))
#'
RP <- function(x, power = 1){
  x^power
}

#' Dice
#'
#' @param dietype The type of die.
#' @param probvalues The probability of getting a particular number of divots.
#'
#' @return The sum of two dice.
#' @export
#'
#' @examples
#' set.seed(123)
#' roll()
#' roll(dietype = 1:20)
#'
roll <- function(dietype = 1:6, probvalues = rep(1/length(dietype), length(dietype))){
  if(all(dietype %in% 1:6)){
    warning("standard dice")
    } else {
    warning("non-standard dice")
    }
  if(sum(probvalues) != 1)
    stop("'probvalues' must add to one")
  dice <- sample(dietype, size = 2, replace = TRUE, prob = probvalues)
  sum(dice)
}
