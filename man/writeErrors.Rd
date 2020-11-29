\name{writeErrors}
\alias{writeErrors}
\title{Query or set whether DCOM errors are written to a file}
\description{
 This function allows one to query or set the flag that controls
whether DCOM errors are appended to a file when
they are encountered.  
}
\usage{
writeErrors(val = logical(), file = character())
}
\arguments{
\item{val}{a logical value.  If this is not specified, the function
 queries the current logical value controlling whether DCOM errors are 
 written to a file.  If this is a logical value (not an empty vector),
 that value of the first element is used to set whether the DCOM errors
 are written to a file or not.}
\item{file}{a character value. If this is not specified, the function
 queries the current location of the log file. If this is a character value
 (not an empty vector) the value of the first element is used as the location
 of the log file. The file will be created if it does not exist already. If
 the log file is not specified, but errors are being written, this will 
 create a temporary log file.}
}
\value{
 A list with an entry val, with the current status of whether errors are 
 appended to the file and an entry file with the location of the log file, 
 if any.
}
\author{Duncan Temple Lang}
\examples{
  writeErrors(TRUE, file = "C:/temp/RDCOM_err.log")
  writeErrors(FALSE)
  writeErrors()
  writeErrors(TRUE)
}
\keyword{IO}
\keyword{programming}
