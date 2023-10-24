#' Title
#' Transcription
#' @param DNA_seq Input DNA that is trancribed
#'
#' @return RNA sequence transcribed from the input DNA
#' @export
#'
#' @examples
#' Transcribe_DNA("ATGCCGTA")
Transcribe_DNA <- function(DNA_seq){
  RNA_seq <- gsub("T", "U", DNA_seq)
  return(RNA_seq)
}
