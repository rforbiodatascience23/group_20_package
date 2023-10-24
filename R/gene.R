#' Creating a gene
#'
#' @param X the length of the gene
#'
#' @return a DNA sequence i.e., a gene
#' @export
#'
#' @examples
#' gene(10)
gene <- function(X){
  bases <- sample(c("A", "T", "G", "C"), size = X, replace = TRUE)
  dna_string <- paste0(bases, collapse = "")
  return(dna_string)
}
