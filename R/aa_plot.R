#' Making a plot of aa counts
#'
#' @param aa_sequence is a string of amino acid letters
#'
#' @return a bar chart showing the number of each amino acid
#' @export
#'
#' @examples aa_plot("CTGPCCTRND")
aa_plot <- function(aa_sequence){
  aa_vector<- aa_sequence |>
    # aa_sequence is a string of amino acids which is turned into a vector of characters
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(aa_vector, function(amino_acid) stringr::str_count(string = aa_sequence, pattern =  amino_acid)) |>
    as.data.frame()
  # This code creates a data frame called counts to store the counts of each unique amino acid

  colnames(counts) <- c("Counts")
  # This line sets the column name of the counts data frame to "Counts".
  counts[["aa_sequence"]] <- rownames(counts)

  aa_plot_bar <- counts |>
    # This code uses the ggplot2 package to create a bar chart named aa_plot_bar
    ggplot2::ggplot(ggplot2::aes(x = aa_sequence, y = Counts, fill = aa_sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(aa_plot_bar)
  # Returns the plot
}
