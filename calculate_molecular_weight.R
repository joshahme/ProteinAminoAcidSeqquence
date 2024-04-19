#' Calculate Molecular Weight of a Protein
#'
#' This function calculates the molecular weight of a protein sequence based on the
#' molecular weights of individual amino acids.
#'
#' @param protein_sequence A character string representing the protein sequence.
#' @return A numeric value representing the molecular weight of the protein.
#' @export
calculate_molecular_weight <- function(protein_sequence) {
  # Define a lookup table of amino acid molecular weights
  amino_acid_weights <- c(A = 71.07, R = 156.18, N = 114.08, D = 115.08, C = 103.10,
                          E = 129.11, Q = 128.13, G = 57.05, H = 137.14, I = 113.16,
                          L = 113.16, K = 128.17, M = 131.19, F = 147.18, P = 97.12,
                          S = 87.08, T = 101.11, W = 186.22, Y = 163.18, V = 99.13)

  # Convert the protein sequence to uppercase
  protein_sequence <- toupper(protein_sequence)

  # Calculate the total molecular weight
  molecular_weight <- sum(amino_acid_weights[unlist(strsplit(protein_sequence, ""))])

  return(molecular_weight)
}
