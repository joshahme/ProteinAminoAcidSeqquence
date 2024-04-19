# Define the S4 class for protein objects
setClass("Protein",
         slots = list(sequence = "character"))

# Constructor function for Protein class
Protein <- function(sequence) {
  new("Protein", sequence = sequence)
}
