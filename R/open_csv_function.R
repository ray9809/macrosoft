#' A function for opening csvs that are saved by SSMS 2012.
#'
#' This function lets you open up .csv files that are saved from SQL Server Management Studio 2012.
#' @param filename Path on your file system to the saved-down file.
#' @param app Keyword for the application that generated your CSV.  Defaults to SSMS.
#' @param header Boolean for whether your file includes headers.
#' @keywords SSMS, SQL, Microsoft SQL Server, CSV
#' @export
#' @examples
#' open_csv()

open_csv <- function(filename, app = "SSMS", header = T) {
  if(keyword == "SSMS") {
    return(
      as.data.frame(
        read.csv(
          filename, 
          header = header, 
          fileEncoding = "UTF-8-BOM",
          na.string = "NULL"
        )
      )
    )
    } else {
    stop("Application is not supported.")
  }
}