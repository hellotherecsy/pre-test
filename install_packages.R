#######################################################
# Install R Packages
# - Rmd 파일 실행 전 설치 필요
#######################################################
pkg_list <- c("devtools",
              "shiny",
              "lubridate",
              "data.table",
              "reshape2",
              "ggplot2",
              "ggradar",
              "scales",
              "plyr",
              "ddplyr",
              "DBI",
              "RPostgreSQL")
pkg_list <- pkg_list[!pkg_list %in% as.data.frame(installed.packages())$Package]

if (length(pkg_list) != 0) {
  for (pkg in pkg_list) {
    if (pkg == "ggradar") {
      devtools::install_github("ricardo-bion/ggradar",
                               dependencies=TRUE)
    } else {
      install.packages(pkg)
    }
  }
}
