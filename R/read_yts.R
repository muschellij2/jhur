#' Read Youth Tobacco Survey (YTS)
#'
#' @param ... Additional arguments to pass to
#' \code{\link{read_csv}}
#'
#' @return A \code{tibble}
#' @export
#'
#' @examples
#' x = read_yts
#' @importFrom readr read_csv problems stop_for_problems
read_yts = function(...) {
  fname = jhu_file("Youth_Tobacco_Survey_YTS_Data.csv")
  df = readr::read_csv(fname, ...)
  readr::stop_for_problems(df)
  return(df)
}


