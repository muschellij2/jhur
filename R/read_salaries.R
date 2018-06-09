#' Read Baltimore Salary data
#'
#' @param ... Additional arguments to pass to
#' \code{\link{read_csv}}
#'
#' @return A \code{tibble}
#' @export
#'
#' @examples
#' sal = read_salaries()
read_salaries = function(...) {
  fname = jhu_file("Baltimore_City_Employee_Salaries_FY2015.csv")
  df = readr::read_csv(fname, ...)
  readr::stop_for_problems(df)
  return(df)
}


