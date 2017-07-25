### R code from vignette source 'prada2cellHTS.Rnw'

###################################################
### code chunk number 1: prepare
###################################################
library("cellHTS2")


###################################################
### code chunk number 2: readPlateData
###################################################
experimentName = "ApoptosisScreen"
dataPath = system.file("extdata", package = "prada")
x = readPlateList("Platelist.txt", name = experimentName,
                  path = dataPath, verbose = FALSE,
                  importFun=function(file, path){
                      data <- read.delim(file, header=FALSE, as.is=TRUE)
                      return(list(data.frame(well=I(as.character(data[,2])), val=-log10(data[,3])),
                                  readLines(file)))
                  })
x


###################################################
### code chunk number 3: configure
###################################################
x = configure(x, confFile="Plateconf.txt", descripFile="Description.txt", path=dataPath)


###################################################
### code chunk number 4: annotate
###################################################
geneIDFile = file.path(dataPath, "GeneIDs.txt")
x = annotate(x, geneIDFile)


###################################################
### code chunk number 5: normalize
###################################################
xn <- normalizePlates(x, method="mean")
xsc <- scoreReplicates(xn, sign="-", method="zscore")
xsc <- summarizeReplicates(xsc, summary="mean")


###################################################
### code chunk number 6: report (eval = FALSE)
###################################################
## od <- tempfile()
## writeReport(raw=x, normalized=xn, scored=xsc, force = TRUE, outdir=od)


