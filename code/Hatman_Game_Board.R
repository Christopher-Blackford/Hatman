#####Hatman_Game_Board subcode being used by Hatman

set.seed(seed)
Word_length = length(strsplit(Word_list[sample(1:nrow(Word_list), 1),], "")[[1]])

###########################
#####Creating Blank Lines for letters to be placed
pt1 <- c(1,1); pt2 <- c(4,1)
coords <- rbind(pt1,pt2)

Blank_lines <- SpatialLines(list(Lines(Line(coords), ID="a")))

for (i in 2:Word_length){
  coords[,1] <- coords[,1] + 5
  Blank_lines <- gUnion(Blank_lines, SpatialLines(list(Lines(Line(coords), ID="a"))))
  }


###########################
#####Border - Border is important since it's an aesthetically nice way to designate the size of the window you will be playing in
coords <- rbind(c(0,0.5),c(0,0),c(0.5,0))
Border <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords <- rbind(c(0,8.5),c(0,9),c(0.5,9))
Border <- gUnion(Border, SpatialLines(list(Lines(Line(coords), ID="a"))))

coords <- rbind(c(6.5,9),c(7,9),c(7,8.5)); coords[,1] <- coords[,1]+(5*Word_length)
Border <- gUnion(Border, SpatialLines(list(Lines(Line(coords), ID="a"))))

coords <- rbind(c(6.5,0),c(7,0),c(7,0.5)); coords[,1] <- coords[,1]+(5*Word_length)
Border <- gUnion(Border, SpatialLines(list(Lines(Line(coords), ID="a"))))


###########################
#####Man

#Hat
coords <- rbind(c(3,7.3), c(5,7.3)); coords[,1] <- coords[,1]+(5*Word_length)
Hat <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords <- rbind(c(3.5,7.3), c(3.5,8), c(4.5,8), c(4.5,7.3)); coords[,1] <- coords[,1]+(5*Word_length)
Hat <- gUnion(Hat, SpatialLines(list(Lines(Line(coords), ID="a"))))

#Head (below hat)
x_head_centre <- 4+(5*Word_length)

x <- seq(x_head_centre-0.5, x_head_centre-0.4, by = 0.001)
y <- sqrt(0.5^2-(x-x_head_centre)^2)+7
coords <- data.frame(x,y)[order(-x),]

x <- seq(x_head_centre-0.5, x_head_centre+0.5, by = 0.001)
y <- -sqrt(0.5^2-(x-x_head_centre)^2)+7
coords1 <- data.frame(x,y); coords <- rbind(coords,coords1)

x <- seq(x_head_centre+0.4, x_head_centre+0.5, by = 0.001)
y <- sqrt(0.5^2-(x-x_head_centre)^2)+7
coords1 <- data.frame(x,y)[order(-x),]; coords <- rbind(coords,coords1)

Head <- SpatialLines(list(Lines(Line(coords), ID="a")))

#Body
coords <- rbind(c(4,6.5), c(4,5.5)); coords[,1] <- coords[,1]+(5*Word_length)
Body <- SpatialLines(list(Lines(Line(coords), ID="a")))

#Arms
coords <- rbind(c(4,6.25), c(3.666,5.75)); coords[,1] <- coords[,1]+(5*Word_length)
Arm1 <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords <- rbind(c(4,6.25), c(4.333,5.75)); coords[,1] <- coords[,1]+(5*Word_length)
Arm2 <- SpatialLines(list(Lines(Line(coords), ID="a")))

#Legs
coords <- rbind(c(4,5.5), c(3.666,4.75)); coords[,1] <- coords[,1]+(5*Word_length)
Leg1 <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords <- rbind(c(4,5.5), c(4.333,4.75)); coords[,1] <- coords[,1]+(5*Word_length)
Leg2 <- SpatialLines(list(Lines(Line(coords), ID="a")))


#####Plotting entire game board
plot(gUnion(Blank_lines, Border))

rm(Blank_lines, Border, coords, i, pt1, pt2, x, y) #Keeps global environment clean
#####
####
###
##
#END