# import packages
library(dplyr)

# source all R files under src/utils
files <- list.files(c("src/utils"), pattern="*.R$", full.names=TRUE, ignore.case=TRUE)
sapply(files, source)

# set variables for I/O
ROOT = "data"

# read data
input_path <- file.path(ROOT, "raw", "data.csv")
df <- read.csv(input_path)

# apply transformations
mutated_df <- df %>%
    mutate(
        boolcol = fix_missing(boolcol),
        double_numcol = double_number(numcol)
    )

# write to data/processed/ 
dir.create(file.path(ROOT, "processed"))
output_path <- file.path(ROOT, "processed", "data.csv")
write.csv(df, file = output_path, row.names = FALSE)
