# Run this script locally to refresh the cached dataset used by vignettes/mr.Rmd.
# Commit the resulting data/mr_pubmed.rda so CI never calls the NCBI API.
#
# Usage (from repo root):
#   Rscript data-raw/mr_pubmed.R

library(PubmedPlot)

mr_pubmed <- PubmedPlot::search_term_by_year(
  '"Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab]',
  2003:lubridate::year(Sys.Date())
)

save(mr_pubmed, file = "data/mr_pubmed.rda", compress = "bzip2")
