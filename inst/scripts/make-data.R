### =========================================================================
### CRCmodel
### -------------------------------------------------------------------------
###

#download the data that model needs
library(curatedMetagenomicData)
curatedMetagenomicData::curatedMetagenomicData("FengQ_2015.relative_abundance", dryrun = FALSE,rownames = "short") |>
  purrr::map(~ SummarizedExperiment::assay(.x)) |>
  purrr::map(~ base::as.matrix(.x)) |>
  purrr::map(~ tibble::as_tibble(.x, rownames = "rowname")) |>
  purrr::imap(~ readr::write_tsv(.x, base::paste(.y, "tsv", sep = ".")))
curatedMetagenomicData::curatedMetagenomicData("YuJ_2015.relative_abundance", dryrun = FALSE) |>
  purrr::map(~ SummarizedExperiment::assay(.x)) |>
  purrr::map(~ base::as.matrix(.x)) |>
  purrr::map(~ tibble::as_tibble(.x, rownames = "rowname")) |>
  purrr::imap(~ readr::write_tsv(.x, base::paste(.y, "tsv", sep = ".")))
FengQ_2015 <- sampleMetadata%>%filter(study_name=="FengQ_2015")
write.table(FengQ_2015, row.names = FALSE,"FengQ_2015.tsv", sep="\t")
YuJ_2015 <- sampleMetadata%>%filter(study_name=="YuJ_2015")
write.table(YuJ_2015, row.names = FALSE,"YuJ_2015.tsv", sep="\t") 
#use r-package simact build models
#process files as required
#create siamcat object
#build models and evaluate
#draw plots
#please see details in "fen-yuj.R"