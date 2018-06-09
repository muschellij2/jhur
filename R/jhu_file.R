#' Read JHU Data File
#'
#' @param ... Arguments to pass to
#' \code{\link{system.file}}
#'
#' @return A character vector
#' @export
#'
#' @examples
#' jhu_file('kaggleCarAuction.csv')
jhu_file = function(...) {
  system.file("extdata", ..., package = "jhur",
              mustWork = TRUE)
}

