# set global variables
N = 1000
ROOT = "data"

# set seed and create dataframe
set.seed(42)
df <- data.frame(
  numcol = round(runif(N, max = 50)),
  floatcol = runif(N, max = 50),
  boolcol = ifelse(sign(rnorm(N)) == -1, TRUE, NA),
  strcol = sample(LETTERS, N, replace = TRUE),
  monthcol = sample(month.name, N, replace = TRUE)
)


dir.create(file.path(ROOT, "raw"))
output_path <- file.path(ROOT, "raw", "data.csv")
write.csv(df, file = output_path, row.names = FALSE)