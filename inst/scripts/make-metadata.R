meta <- data.frame(
  Title = c("2021-03-31.FengQ_2015.relative_abundance.Rda",
            "2021-03-31.YuJ_2015.relative_abundance.Rda",
            "FengQ_2015.Rda",
            "fen-yuj.Rda",
            "YuJ_2015.Rda"),
  Description = c("the relative abundance file of corhort FengQ_2015", 
                  "the relative abundance file of corhort YuJ_2015", 
                  "the metadata file of corhort FengQ_2015",
                  "the r scripts of building randomforest model of FengQz-2015 and YuJ_2015 using the relative abundance data ", 
                  "the metadata file of corhort YuJ_2015"),
  BiocVersion = c("3.3", "3.3", "3.3", "3.3", "3.3"),
  Genome = rep("NA", 5), 
  SourceType = c(".tsv",
                 ".tsv",
                ".tsv",
                 ".R",
                 ".tsv"
    
  ), 
  SourceUrl = "	https://github.com/waldronlab/curatedMetagenomicData",
  SourceVersion = "Sep 30 2022",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  Coordinate_1_based = NA,
  DataProvider = "curatedMetagenomicData",
  Maintainer = "Bioconductor Package Maintainer <maintainer@bioconductor.org>",
  RDataClass = c( rep("SummarizedExperiment", 5)) ,
  DispatchClass = c(rep("Rda",5)),
  RDataPath = c("CRCmodel/2021-03-31.FengQ_2015.relative_abundance.Rda", 
                "CRCmodel/2021-03-31.YuJ_2015.relative_abundance.Rda", 
                "CRCmodel/FengQ_2015.Rda", 
                "CRCmodel/fen-yuj.Rda", 
                "CRCmodel/YuJ_2015.Rda"),
  Tags = ""
)

write.csv(meta, file="inst/extdata/metadata.csv", row.names=FALSE)
