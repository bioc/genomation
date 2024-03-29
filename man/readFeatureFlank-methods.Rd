% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readData.R
\docType{methods}
\name{readFeatureFlank}
\alias{readFeatureFlank}
\alias{readFeatureFlank,character-method}
\title{A function to read-in genomic features and their upstream and downstream adjecent regions
such as CpG islands and their shores}
\usage{
readFeatureFlank(location,remove.unusual=TRUE,flank=2000,
                        clean=TRUE,feature.flank.name=NULL)

\S4method{readFeatureFlank}{character}(location, remove.unusual = TRUE,
  flank = 2000, clean = TRUE, feature.flank.name = NULL)
}
\arguments{
\item{location}{for the bed file of the feature.}

\item{remove.unusual}{remove chromsomes with unsual names random, Un and antyhing with "_" character}

\item{flank}{number of basepairs for the flanking regions}

\item{clean}{If set to TRUE, flanks overlapping with other main features will be trimmed}

\item{feature.flank.name}{the names for feature and flank ranges, it should be a character 
vector of length 2. example: c("CpGi","shores")}
}
\value{
a GRangesList object containing one GRanges object for flanks and one for GRanges object
        for the main feature.
  NOTE: This can not return a CompressedGRangesList at the moment because flanking regions do not
  have to have the same column name as the feature. CompressedGRangesList elements should resemble
  each other in the column content. We can not satisfy that criteria for the flanks
}
\description{
A function to read-in genomic features and their upstream and downstream adjecent regions
such as CpG islands and their shores
}
\examples{
cgi.path = system.file('extdata/chr21.CpGi.hg19.bed', package='genomation')
cgi.shores = readFeatureFlank(cgi.path)
cgi.shores
}
