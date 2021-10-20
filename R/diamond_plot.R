#' Diamond plot
#'
#'this funciton producs a ggplot with \code {vary} versus \code {varx} with diamond markers
#'
#' @param df a dataframe
#' @param varx string name for var x in datafram df
#' @param vary string name for var y in dataframe df
#'
#' @return a plot with diamond markers \code{vary} versus \code{varx}
#' @export
#'
#'@importFrom ggplot2 geom_point
#'
#' @examples
#' df.test <- data.frame(x = rnorm(10),
#'                       y = rnorm(10))
#'
#'diamond_plot(df.test, 'x', 'y')
#'
#'
diamond_plot <- function(df, varx, vary) {
  ggplot(df, aes(x = get(varx), y = get(vary))) +
    geom_point(
      shape = 23,
      fill = "blue",
      color = "darkred",
      size = 3
    )
}

setwd('..')
install('testpackage')

library(testpackage)
data("sample_data")
