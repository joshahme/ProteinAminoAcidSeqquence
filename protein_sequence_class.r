# Define the S3 class for protein sequences
setClass("protein_seq",
         slots = list(sequence = "character"))

# Constructor function for protein_seq class
protein_seq <- function(sequence) {
  new("protein_seq", sequence = sequence)
}
