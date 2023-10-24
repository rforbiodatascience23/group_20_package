#' Extract codons from RNA sequence
#'
#' @param rna_seq the rna sequence to extract codons from
#' @param start start reading position
#'
#' @return a vector of codons
#' @export
#'
#' @examples
#' extract_codons("AGUGCAUG", 1)
extract_codons <- function(rna_seq, start = 1){
  rna_seq_length <- nchar(rna_seq)
  codons <- substring(rna_seq,
                      first = seq(from = start, to = rna_seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = rna_seq_length, by = 3))
  return(codons)
}
