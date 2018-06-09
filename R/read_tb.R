#' Read Tuberculosis data
#'
#' @param ... Additional arguments to pass to
#' \code{\link{read_excel}}
#'
#' @return A \code{tibble}
#' @export
#'
#' @importFrom readxl read_excel
#' @examples
#' tb = read_tb()
read_tb = function(...) {
  fname = jhu_file("tb_incidence.xlsx")
  df = readxl::read_excel(fname, ...)
  return(df)
}



