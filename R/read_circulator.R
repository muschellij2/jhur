#' Read Charm City Circulator data
#'
#' @param ... Additional arguments to pass to
#' \code{\link{read_csv}}
#'
#' @return A \code{tibble}
#' @export
#'
#' @examples
#' circ = read_circulator()
read_circulator = function(...) {
  fname = jhu_file("Charm_City_Circulator_Ridership.csv")
  df = readr::read_csv(fname, ...)
  readr::stop_for_problems(df)
  return(df)
}


