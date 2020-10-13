#' Plot one-way ANOVA
#'
#' plot.one-way creates group comparisons for a one-way ANOVA
#'
#' @param x an object of class one-way
#' @param ... additional arguments passed to boxplot function.
#'
#' @return NULL
#' @export
#' @examples
#' # mileage <- oneway(mpg~cyl,mtcars)
#' plot(mileage)
plot.oneway <- function(x, ...){
  if(!inherits(x, "oneway"))
    stop("Must be class oneway")
  boxplot(x$anova$terms, x$anova$model, ...)
}
