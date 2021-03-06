## @knitr prepareYearlyData
prepareYearlyData <- function(subsetDf, year){
  # add columns for numbers which are not contained in subsetDf
  subsetDf[,as.character(setdiff(parties$ID_BFS, as.numeric(names(subsetDf))))] <- NA
  # replace numerical column names with party names from parties
  partyNames <- paste(left_join(data.frame(ID_BFS = as.numeric(names(subsetDf))), parties, by = "ID_BFS")$Abbr_D, year, sep = "_")
  names(subsetDf) <- partyNames
  return(subsetDf)
}
prepareYearlyDataForVis <- function(subsetDf, year){
  # add columns for numbers which are not contained in subsetDf
  subsetDf[,as.character(setdiff(parties$ID_BFS, as.numeric(names(subsetDf))))] <- NA
  # replace numerical column names with party names from parties
  partyNames <- paste(as.numeric(names(subsetDf)), year, sep = "_")
  names(subsetDf) <- partyNames
  return(subsetDf)
}


