#####################################################################################
#' @name AGGRESSION
#' @title TV and Behavior
#' @aliases AGGRESSION
#' @docType data
#' @description Data regarding the aggressive behavior in relation to exposure to violent television programs.
#' @format A data frame with 16 observations on the following two variables: 
#' \itemize{
#' \item \code{violence} (an integer vector)
#' \item \code{noviolence} (an integer vector)
#' }
#' @details This is data regarding aggressive behavior in relation to exposure to violent television programs from Gibbons (1997) with the following exposition: \dQuote{\ldots a group of children are matched as well as possible as regards home environment, genetic  factors, intelligence, parental attitudes, and so forth, in an effort to minimize factors other than TV that might influence a tendency for aggressive behavior.  In each of the resulting 16 pairs, one child is randomly selected to view the most violent shows on TV, while the other watches cartoons, situation comedies, and the like.  The children are then subjected to a series of tests designed to produce an ordinal measure of their aggression factors.} (pages 143-144)
#' @source Gibbons, J. D. (1977) \emph{Nonparametric Methods for Quantitavie Analysis}. American Science Press.
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. 2015. \emph{Probability and Statistics with R}, Second Edition. Chapman & Hall / CRC.
#' @examples
#' with(data = AGGRESSION, 
#' wilcox.test(violence, noviolence, paired = TRUE, alternative = "greater"))
#' @keywords datasets
"AGGRESSION"
#####################################################################################
#' @name testWoodcarb
#' @title testWoodcarb
#' @aliases testWoodcarb
#' @docType data
#' @description Data I am just using right now.
#' @format A data frame with 151 observations on 75 variables
#' @keywords datasets
"testWoodcarb"


#####################################################################################
#' @name hair1958
#' @title hair1958
#' @aliases hair1958
#' @docType data
#' @description Data I am just using right now.
#' @format A data frame with 58 observations on 23 variables
#' @source This is not the real source just a test:  \url{http://www.fpl.fs.fed.us/documnts/pdf2008/fpl_2008_skog001.pdf}
#' @keywords datasets
"hair1958"
