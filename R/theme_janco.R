#' Minimal theme for scatterplots (etc)
#'
#' @description A minimal theme based on ggthemes::theme_fivethirtyeight()
#'     This theme has both horizontal and vertical panel.grids
#' @param base_size global font size (number)
#' @param base_family global font family (e.g. sans, serif)
#' @return Adds a theme to a ggplot
#' @export
#' @examples
#' ggplot(mtcars, aes(x = wt, y = mpg, colour = factor(gear))) +
#' geom_point() +
#' theme_janco_point()

theme_janco_point <- function(base_size = 12, base_family = "sans") {

  ## theme specs
  (theme_foundation(base_size = base_size, base_family = base_family)
    + theme(
      line = element_line(colour = "black"),
      rect = element_rect(fill = "#F0F0F0",
                          linetype = 0, colour = NA),
      text = element_text(colour = "#3C3C3C"),

      # AXIS
      ## axis labs
      axis.title.x = element_text(margin = margin(t = 10)),
      axis.title.y = element_text(margin = margin(r = 15)),
      ## axis other
      axis.text = element_text(),
      axis.ticks = element_blank(),
      axis.line = element_blank(),

      # LEGEND
      legend.background = element_rect(),
      legend.position = "bottom",
      legend.direction = "horizontal",
      legend.box = "vertical",

      # GRID AND TITLE
      panel.grid = element_line(colour = NULL),
      panel.grid.major =
        element_line(colour = "#D2D2D2"),
      panel.grid.minor = element_blank(),
      plot.title = element_text(hjust = 0, size = rel(1.5), face = "bold"),
      plot.margin = unit(c(1, 1, 1, 1), "lines"),
      strip.background = element_rect()))
}

#' Minimal theme for barplots (etc)
#'
#' @description A minimal theme based on ggthemes::theme_fivethirtyeight()
#'     This theme has no vertical panel.grid
#' @param base_size global font size (number)
#' @param base_family global font family (e.g. sans, serif)
#' @return Adds a theme to a ggplot
#' @export
#' @examples
#' ggplot(mtcars, aes(x = wt, y = mpg, colour = factor(gear))) +
#'   geom_point() +
#'   theme_janco_bar()


theme_janco_bar <- function(base_size = 12, base_family = "sans") {

  ## theme specs
  (theme_foundation(base_size = base_size, base_family = base_family)
   + theme(
     line = element_line(colour = "black"),
     rect = element_rect(fill = "#F0F0F0",
                         linetype = 0, colour = NA),
     text = element_text(colour = "#3C3C3C"),

     # AXIS
     ## axis labs
     axis.title.x = element_text(margin = margin(t = 10)),
     axis.title.y = element_text(margin = margin(r = 15)),
     ## axis other
     axis.text = element_text(),
     axis.ticks = element_blank(),
     axis.line = element_blank(),

     # LEGEND
     legend.background = element_rect(),
     legend.position = "bottom",
     legend.direction = "horizontal",
     legend.box = "vertical",

     # GRID AND TITLE
     panel.grid = element_line(colour = NULL),
     panel.grid.major = element_line(colour = "#D2D2D2"),
     panel.grid.minor = element_blank(),
     panel.grid.major.x = element_blank(),
     plot.title = element_text(hjust = 0, size = rel(1.5), face = "bold"),
     plot.margin = unit(c(1, 1, 1, 1), "lines"),
     strip.background = element_rect()))
}
