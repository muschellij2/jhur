#' Read Bike Lanes data
#'
#' @param ... Additional arguments to pass to
#' \code{\link{read_csv}}
#'
#' @return A \code{tibble}
#' @export
#'
#' @examples
#' bike = read_bike()
read_bike = function(...) {
  fname = jhu_file("Bike_Lanes.csv")
  df = readr::read_csv(fname, ...)
  readr::stop_for_problems(df)
  return(df)
}


