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


#' @export
#' @importFrom lubridate mdy
#' @import tidyr dplyr stringr
read_circulator_long = function(...) {
  circ = read_circulator(...)
  circ = mutate(circ, date = mdy(date))
  # change colnames for reshaping
  colnames(circ) =  colnames(circ) %>%
    str_replace("Board", ".Board") %>%
    str_replace("Alight", ".Alight") %>%
    str_replace("Average", ".Average")

  # make long
  long = gather(circ, "var", "number",
                starts_with("orange"),
                starts_with("purple"), starts_with("green"),
                starts_with("banner"))
  # separate
  long = separate(long, var, into = c("line", "type"),
                  sep = "[.]")
  return(long)

}

