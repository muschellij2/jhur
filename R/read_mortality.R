#' Read Child Mortality Data
#'
#' @param ... Additional arguments to pass to
#' \code{\link{read_csv}}
#'
#' @return A \code{tibble}
#' @export
#'
#' @examples
#' mort = read_mortality()
read_mortality = function(...) {
  fname = jhu_file("indicatordeadkids35.csv")
  df = readr::read_csv(fname, ...)
  readr::stop_for_problems(df)
  return(df)
}



