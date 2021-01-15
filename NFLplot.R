library(png)
library(xlsx)
library(ggplot2)
library(plotly) 

mydata <- read.xlsx("C:/Users/logha/Documents/Practice/NFL ACL Injuries by Position.xlsx",1)

img <- readPNG("Football Positions.png")

pct<- mydata$Avg...of.Total.ACL.Injuries

background_image <- function(raster.img){
  annotation_raster(raster.img ,
                    xmin=0,xmax=500,
                    ymin=0,ymax=500)
}

p <-ggplot(mydata, aes(X, Y,name = pct)) + background_image(img) + geom_point() + xlim(0,500) + ylim(0,500)
ggplotly(p + 
           ggtitle("Average Annual NFL ACL Injury Rates by Position") +
           theme(panel.grid.major=element_blank(),
                 panel.grid.minor=element_blank()) 
)
