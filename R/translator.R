

#' Codon Translator
#'
#'
#' @param codons codons to be concatenated into a string
#'
#' @return A string of aminoacids(Letters eg. Alanine = A)
#' @export
#'
#' @examples
#' translator(c("UUU","UCU"))
translator <- function(codons){
  aa_sequence <- paste0(codon_table[codons], collapse = "")
  #aa = amino acid (sequence)
  return(aa_sequence)
}
