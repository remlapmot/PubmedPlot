# Refresh the cached dataset used by vignettes/mr.Rmd.
# If data/mr_pubmed.rda already exists, only fetches the current and previous
# year so the run stays fast and well within NCBI rate limits.
# For a full rebuild from 2003, delete data/mr_pubmed.rda first.
#
# Usage (from repo root):
#   Rscript data-raw/mr_pubmed.R

library(PubmedPlot)

sterm <- '"Mendelian randomisation" [tiab] OR "Mendelian randomization" [tiab]'
current_year <- lubridate::year(Sys.Date())

rda_path <- "data/mr_pubmed.rda"

if (file.exists(rda_path)) {
  load(rda_path)  # loads mr_pubmed
  # Refetch the previous year (papers trickle in) plus the current year
  latest_year <- max(lubridate::year(mr_pubmed$pub_date), na.rm = TRUE)
  fetch_years <- max(2003L, latest_year - 1L):current_year
  cat("Incremental update: fetching years", paste(range(fetch_years), collapse = "-"), "\n")
  new_data <- PubmedPlot::search_term_by_year(sterm, fetch_years)
  # Replace rows for the fetched years and append any genuinely new PMIDs
  mr_pubmed <- mr_pubmed[!lubridate::year(mr_pubmed$pub_date) %in% fetch_years, ]
  mr_pubmed <- dplyr::bind_rows(mr_pubmed, new_data)
  mr_pubmed <- mr_pubmed[!duplicated(mr_pubmed$pmid), ]
} else {
  cat("No existing data found — fetching full history from 2003\n")
  mr_pubmed <- PubmedPlot::search_term_by_year(sterm, 2003:current_year)
}

save(mr_pubmed, file = rda_path, compress = "xz")
cat("Saved", nrow(mr_pubmed), "records to", rda_path, "\n")
