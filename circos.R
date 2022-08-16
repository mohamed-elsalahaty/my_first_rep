install.packages("SOFIA")
library(SOFIA)
data(mark0)
str(mark0)
a <- data(mark0)
data1<-data.frame(map=mark0$map,chr=mark0$lg,pos=mark0$consensus,locus=mark0$marker)
xpo5_circos = matrix(c(30,101,31,22,64,4), nrow = 2)
rownames(xpo5_circos) = c("Cases","Control")
colnames(xpo5_circos) = c("GG_rs34324334", "GA_rs34324334",
                          "AA_rs34324334")
install.packages("circlize")
library(circlize)
col.pal = c(GG_rs34324334 = "green",GA_rs34324334 = "blue",
            AA_rs34324334 = "red", Cases ="maroon", Control ="grey")
png("m.png", units = "in", width =6,
    height = 5, res =600)
chordDiagram(xpo5_circos, grid.col = col.pal,
             link.lwd = 1,
             link.lty =1,
             link.border = 1, directional = 2)
dev.off()

?direction.type
install.packages("chorddiag")
library(chorddiag)
install.packages("tiff")
library(tiff)
install.packages("devtools")

devtools::install_github("mattflor/chorddiag", build_vignettes = TRUE)


tiff('P3', units="in", width=5, height=6, res=1200, compression = 'lzw')

library(chorddiag)

install.packages("")

devtools::install_github("mattflor/chorddiag")

install.packages("devtools")
devtools::install_github("mattflor/chorddiag", build_vignettes = TRUE)
devtools::install_github("r-lib/devtools")


png(filename = "circos.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white",  res = NA, …,
    type = c("cairo", "cairo-png", "Xlib", "quartz"), antialias)
getwd()

library(tiff)

s<- read.csv("MIsmail_HCC_22.csv")
str(s)
getwd()
s$groups <- factor(s$groups)
s$gender <- factor(s$gender)
s$XPO5<- factor(s$XPO5)
aaadsa<- s[, c("groups", "gender", "XPO5")]


chordDiagram(aaadsa, grid.col = col.pal,
             link.lwd = 1,
             link.lty =1,
             link.border = 1, directional = 2)


s
