library(magrittr)
jhu_cars = mtcars %>% tibble::rownames_to_column(var = "car")
usethis::use_data(jhu_cars, compress = "xz")

