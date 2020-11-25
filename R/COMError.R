COMStop =
function(msg, status, class = "COMError")
{
  e = simpleError(msg)
  e$status = status
  class(e) = c(class, class(e))
  stop(e)
}


writeErrors =
function(val = logical(), file = character())
{
  if(length(val)) {
    if(val && !length(file)) {
      file <- tempfile(pattern = "RDCOMClient", fileext = ".log")
      file.create(file)
    }
  }
  
  if(length(file)) {
    if(!file.exists(file)) {
      file.create(file)
    }
    file <- normalizePath(file)
    .Call("RDCOM_setLogFile", as.character(file), PACKAGE = "RDCOMClient")
  } else {
    file = .Call("RDCOM_getLogFile", PACKAGE = "RDCOMClient")
  }
  
  if(length(val))
      .Call("RDCOM_setWriteError", as.logical(val), PACKAGE = "RDCOMClient")
  else
    val = .Call("RDCOM_getWriteError", PACKAGE = "RDCOMClient")
  
  return(list(val = val, file = file))
}
