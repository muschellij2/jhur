#' Read Baltimore Monuments data
#'
#' @param ... Additional arguments to pass to
#' \code{\link{read_csv}}
#'
#' @return A \code{tibble}
#' @export
#'
#' @examples
#' mon = read_monuments()
read_monuments = function(...) {
  fname = jhu_file("Monuments.csv")
  df = readr::read_csv(fname, ...)
  readr::stop_for_problems(df)
  return(df)
}


