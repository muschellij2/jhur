#' Read Youth Tobacco Survey (YTS)
#'
#' @param ... Additional arguments to pass to
#' \code{\link{read_csv}}
#' @param verbose Should messages be printed?
#'
#' @return A \code{tibble}
#' @export
#'
#' @importFrom readr read_csv problems stop_for_problems
#' @examples
#' yts = read_yts()
read_yts = function(..., verbose = FALSE) {
  fname = jhu_file("Youth_Tobacco_Survey_YTS_Data.csv")
  func = identity
  if (!verbose) {
    func = suppressMessages
  }
  func( {
    df = readr::read_csv(fname, ...)
  })
  readr::stop_for_problems(df)
  return(df)
}


