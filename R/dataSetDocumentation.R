################################################################################
#' @importFrom graphics abline axis box boxplot dotchart hist legend lines mtext par plot plot.design points polygon segments text title
#' @importFrom stats dbinom density dnorm fitted fivenum median pnorm pt qchisq qnorm qqline qqnorm qt quantile rbinom rnorm rstandard sd shapiro.test var
#' 
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


################################################################################
#' @name testWoodcarb
#' @title testWoodcarb
#' @aliases testWoodcarb
#' @docType data
#' @description Data I am just using right now.
#' @format A data frame with 151 observations on 75 variables
#' @keywords datasets
"testWoodcarb"


################################################################################
#' @name hair1958
#' @title hair1958
#' @aliases hair1958
#' @docType data
#' @description Data I am just using right now.
#' @format A data frame with 58 observations on 23 variables
#' @source This is not the real source just a test:  \url{http://www.fpl.fs.fed.us/documnts/pdf2008/fpl_2008_skog001.pdf}
#' @keywords datasets
"hair1958"

################################################################################
#' Daily price returns (in pence) of Abbey National shares between 7/31/91 and
#' 10/8/91
#' 
#' Data used in problem 6.39
#' 
#' 
#' @name Abbey
#' @docType data
#' @format A data frame with 50 observations on the following variable.
#' \describe{ 
#' \item{price}{daily price returns (in pence) of Abbey National shares} 
#' }
#' @source Kitchens, L. J. (2003) \emph{Basic Statistics and Data Analysis}.
#' Duxbury
#' @keywords datasets
#' @examples
#' 
#' qqnorm(Abbey$price)
#' qqline(Abbey$price)
#' t.test(Abbey$price, mu = 300)
#' 
"Abbey"


################################################################################
#' Crimes reported in Abilene, Texas
#' 
#' Data used in Exercise 1.23 and 2.79
#' 
#' 
#' @name Abilene
#' @docType data
#' @format A data frame with 16 observations on the following 3 variables.
#' \describe{ 
#' \item{CrimeType}{a factor with levels \code{Aggravated
#' assault} \code{Arson} \code{Burglary} \code{Forcible rape} \code{Larceny
#' theft} \code{Murder} \code{Robbery} \code{Vehicle theft}}
#' \item{Year}{a factor with levels \code{1992} and \code{1999}} 
#' \item{Number}{number of reported crimes}  
#' }
#' @source Kitchens, L. J. (2003) \emph{Basic Statistics and Data Analysis}.
#' Duxbury
#' @keywords datasets
#' @examples
#' 
#' par(mfrow = c(2, 1))
#' barplot(Abilene$Number[Abilene$Year=="1992"], 
#' names.arg = Abilene$CrimeType[Abilene$Year == "1992"], 
#' main = "1992 Crime Stats", col = "red")
#' barplot(Abilene$Number[Abilene$Year=="1999"], 
#' names.arg = Abilene$CrimeType[Abilene$Year == "1999"],
#' main = "1999 Crime Stats", col = "blue")
#' par(mfrow = c(1, 1))
#' 
#' \dontrun{
#' library(ggplot2)
#' ggplot(data = Abilene, aes(x = CrimeType, y = Number, fill = Year)) + 
#' geom_bar(stat = "identity", position = "dodge") +
#' theme_bw() + 
#' theme(axis.text.x = element_text(angle = 30, hjust = 1))
#' }
#' 
"Abilene"

################################################################################
#' Perceived math ability for 13-year olds by gender
#' 
#' Data used in Exercise 8.57
#' 
#' 
#' @name Ability
#' @docType data
#' @format A data frame with 400 observations on the following 2 variables.
#' \describe{ 
#' \item{Gender}{a factor with levels \code{boy} and \code{girl}} 
#' \item{Skill}{a factor with levels \code{aboveavg}, \code{average}, \code{belowavg},
#' \code{hopeless}, and \code{superior}}
#' }
#' @source Kitchens, L. J. (2003) \emph{Basic Statistics and Data Analysis}.
#' Duxbury
#' @keywords datasets
#' @examples
#' 
#' T1 <- xtabs(~Gender + Skill, data = Ability)
#' T1
#' chisq.test(T1)
#' 
"Ability"

################################################################################
#' Abortion rate by region of country
#' 
#' Data used in Exercise 8.51
#' 
#' 
#' @name Abortion
#' @docType data
#' @format A data frame with 51 observations on the following 10 variables.
#' \describe{ 
#' \item{state}{a factor with levels \code{alabama}
#' \code{alaska} \code{arizona} \code{arkansas} \code{california}
#' \code{colorado} \code{connecticut} \code{delaware} \code{dist of columbia}
#' \code{florida} \code{georgia} \code{hawaii} \code{idaho} \code{illinois}
#' \code{indiana} \code{iowa} \code{kansas} \code{kentucky} \code{louisiana}
#' \code{maine} \code{maryland} \code{massachusetts} \code{michigan}
#' \code{minnesota} \code{mississippi} \code{missouri} \code{montana}
#' \code{nebraska} \code{nevada} \code{new hampshire} \code{new jersey}
#' \code{new mexico} \code{new york} \code{north carolina} \code{north dakota}
#' \code{ohio} \code{oklahoma} \code{oregon} \code{pennsylvania} \code{rhode
#' island} \code{south carolina} \code{south dakota} \code{tennessee}
#' \code{texas} \code{utah} \code{vermont} \code{virginia} \code{washington}
#' \code{west virginia} \code{wisconsin} \code{wyoming}}
#' \item{region}{a factor with levels \code{midwest} \code{northeast}
#' \code{south} \code{west}} 
#' \item{regcode}{a numeric vector}
#' \item{rate1988}{a numeric vector} 
#' \item{rate1992}{a numeric vector} 
#' \item{rate1996}{a numeric vector} 
#' \item{provide1988}{a numeric vector} 
#' \item{provide1992}{a numeric vector}
#' \item{lowhigh}{a numeric vector} 
#' \item{rate}{a factor with levels \code{Low} and \code{High}}
#' }
#' @source Kitchens, L. J. (2003) \emph{Basic Statistics and Data Analysis}.
#' Duxbury
#' @keywords datasets
#' @examples
#' 
#' T1 <- xtabs(~region + rate, data = Abortion)
#' T1
#' chisq.test(T1)
#' 
"Abortion"