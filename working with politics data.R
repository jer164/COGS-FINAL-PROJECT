library(tidyverse)

fileName <- "~/Downloads/politics"
conn <- file(fileName,open="r")
linn <-readLines(conn)
for (i in 1:length(linn)){
  print(linn[i])
}
close(conn)

df <- fromJSON(linn[1])

yolo <- vector("list", length(linn))
for (i in 1:length(linn)){
 dfpolitics <- fromJSON(linn[i])  
 yolo[[i]] <- dfpolitics["title"]
}
write.table(yolo, "yolo.txt", row.names = FALSE, col.names = FALSE, sep = "\n")

