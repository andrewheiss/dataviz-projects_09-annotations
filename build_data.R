library(tidyverse)

# Save {qatarcars} data as manual .rds until v1.1 is on CRAN
read_rds("https://github.com/profmusgrave/qatarcars/raw/refs/heads/main/inst/extdata/qatarcars.rds") |> 
  as_tibble() |> 
  saveRDS(file = "data/qatarcars.rds")

# Build answer key so that the plots to recreate exist in images/ ----
quarto::quarto_render(
  "answers.qmd",
  output_format = c("html", "typst")
)
