#' Two-Sample Equal Variance t-Test
#'
#' @param x a non-empty numeric vector.
#' @param y a non-empty numeric vector.
#' @param alpha value to test hypothesis.
#' @param alternative hypothesis (can take on one of three values).
#' @param ... further arguments to be passed to or from methods.
#'
#' @return the answers!
#' @export
#'
#' @examples
#' T1 <- ttest(x = rnorm(300.5, 1), y = rnorm(30, 1, 1), alternative = "less")
#' T1
#' print(T1)
#' plot(T1)
#' Mx1x2 <- matrix(rnorm(60, 0, 1), nrow = 30)
#' class(Mx1x2)
#' TM <- ttest(x = Mx1x2)
#' TM
#' plot(TM)
#' ttest(x = Mx1x2) # Test that a matrix will work
#' mylist <- list(xl = rnorm(30), yl = rnorm(30))
#' class(mylist)
#' ttest(x = mylist, alternative = "greater")
#' plot(ttest(mylist))
#'
ttest <- function(x, y, alpha = 1/20, alternative = "two.sided", ...){
  if(is.null(class(x))){
    class(x) <- data.class(x)
  }
  UseMethod("ttest")
}



#' @export
ttest.default <- function(x, y, alpha = 1/20, alternative = "two.sided", ...){
  choices <- c("two.sided", "greater", "less")
  alt <- pmatch(alternative, choices)
  alternative <- choices[alt]
  # add some checks here
  yok <- !is.na(y)
  xok <- !is.na(x)
  x <- x[xok]
  y <- y[yok]
  n1 <- length(x)
  n2 <- length(y)
  ndf <- n1 + n2 - 2
  s2 <- ((n1 - 1)*var(x) + (n2 - 1)*var(y))/ndf
  tstat <- (mean(x) - mean(y))/sqrt(s2*(1/n1 + 1/n2))
  # tails
  if(alternative == "two.sided"){
    tail.area <- 2 * (1 - pt(abs(tstat), ndf))
  } else if(alternative == "less") {
    tail.area <- pt(tstat, ndf)
  } else {
    tail.area <- 1 - pt(tstat, ndf)
  }
  results <- list("t-stat" = tstat, d.f. = ndf, y1 = x, y2 = y,
                  alternative = alternative, tail.area = tail.area,
                  reject = tail.area < alpha, alpha = alpha)
  class(results) <- "my.t.test"
  results
}

#' @export
print.my.t.test <- function(x, ...){
  cat("\n")
  cat("My Monday Night Modified 2 Sample Equal Variance t-test", "\n")
  cat("\n")
  cat(paste("Alternative hypothesis:", x[5]), "\n")
  cat(paste("Reject the null hypothesis:", x[7]), "\n")
  cat("\n")
  print(round(unlist(x[c(1, 2, 6)]), 4))
  invisible(x)
}

#' @export
plot.my.t.test <- function(x, ...){
  boxplot(x[c("y1", "y2")], col = "pink",
          names = c("Sample 1", "Sample 2"), ...)
}

#' @export
ttest.matrix <- function(x, ...){
  ttest(x[, 1], x[, 2])
}

#' @export
ttest.list <- function(x, ...){
  ttest(x = x[[1]], y = x[[2]])
}

