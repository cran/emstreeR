#' @title Plot method for 'MST' objects 
#' 
#' @description Plots a 2D Minimum Spanning Tree (MST) by producing a scatter 
#' plot with segments using the generic function \code{\link{plot}}.
#'     
#' @param x a \code{MST} class object returned by the 
#'     \code{\link[emstreeR]{ComputeMST}} function.
#' @param V1 the numeric position or the name of the column to be used as the x 
#'     coordinates.
#' @param V2 the numeric position or the name of the column to be used as the y 
#' coordinates.
#' @param col.pts color of the points (vertices/nodes) in the plot.
#' @param col.segts color of the segments (edges) in the plot.
#' @param lty line type. An integer or name: \code{0 = "blank"}, 
#'     \code{1 = "solid"}, \code{2 = "dashed"}, \code{3 = "dotted"}, 
#'     \code{4 = "dotdash"}, \code{5 = "longdash"}, \code{6 = "twodash"}. The 
#'     default for \code{'MST'} objects is \code{"dotted"}. 
#'
#' @param ... further graphical parameters.
#' 
#' @examples
#' 
#' ## 2D artifical data
#' set.seed(1984)
#' n <- 15
#' c1 <- data.frame(x = rnorm(n, -0.2, sd = 0.2), y = rnorm(n, -2, sd = 0.2))
#' c2 <- data.frame(x = rnorm(n, -1.1, sd = 0.15), y = rnorm(n, -2, sd = 0.3)) 
#' c3 <- c(0.55, -2.4)
#' d <- rbind(c1, c2, c3)
#' d <- as.data.frame(d)
#' 
#' ## MST:
#' out <- ComputeMST(d)
#' out
#' 
#' ## 2D plot:
#' plot(out)
#' 
#' # using different parameters
#' plot(out, col.pts = "blue", col.segts = "red", lty = 2)
#' 
#' @export
#' 
plot.MST <- function(x, V1 = 1, V2 = 2, col.pts = "black", 
                     col.segts = "black", lty=3, ...){
  # user can choose which columns to plot by assigning other values to V1 and V2
  tree <- x
  
  from <- tree$from
  to <- tree$to
  
  V1 = V1
  V2 = V2
  
  plot(x = tree[, V1], y = tree[, V2], col = col.pts, ...)
  graphics::segments(tree[from, V1], tree[from, V2], tree[to, V1], tree[to, V2], 
           col = col.segts, lty = lty, ...)
}

