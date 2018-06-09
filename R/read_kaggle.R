#' Read Kaggle Car Data
#'
#' @param col_types column types to pass to
#' \code{\link{read_csv}}
#' @param ... Additional arguments to pass to
#' \code{\link{read_csv}}
#'
#' @return A \code{tibble}
#' @export
#'
#' @importFrom readr cols col_double
#' @examples
#' x = read_kaggle()
read_kaggle = function(
  col_types = cols(VehBCost = col_double()),
  ...) {
  fname = jhu_file("kaggleCarAuction.csv")
  df = readr::read_csv(fname,
                       col_types = col_types,
                       ...)
  readr::stop_for_problems(df)
  return(df)
}


