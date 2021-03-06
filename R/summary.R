#' Summarize one-way ANOVA
#'
#' summary.oneway summarizes the results of the one-way ANOVA
#'
#' @param x an object of class one-way.
#' @export
#'
#' @return type anova and dataframe
#' @examples
#' mileage <- oneway(mpg ~ cyl, mtcars)
#' summary(mileage)
summary.oneway <- function(x){
  if(!inherits(x, "oneway"))
    stop("Must be class oneway")
  anova(x$anova)
}

