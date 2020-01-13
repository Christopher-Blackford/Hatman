#####Hatman_Letters subcode being used by Hatman

#Plot each letter in it's subsequent position
for(z in 1:length(Letter_positions)){

Letter_position <- Letter_positions[z]


#####A
if(Letter_chosen == "A"){
coords <- rbind(c(1,1.1), c(2.5,4.1), c(2.5,4.1), c(4,1.1))
coords[,1] <- coords[,1] + Letter_position*5 - 5
A <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords <- rbind(c(1.72,2.5), c(3.28,2.5))
coords[,1] <- coords[,1] + Letter_position*5 - 5

A <- gUnion(A, SpatialLines(list(Lines(Line(coords), ID="a"))))
plot(A, add=T)
}


#####B
if(Letter_chosen == "B"){
coords <- rbind(c(2,1.1), c(2,4.1))
coords[,1] <- coords[,1] + Letter_position*5 - 5
B <- SpatialLines(list(Lines(Line(coords), ID="a")))

#B_loop
x <- seq(2,2.75, by = 0.01)
y <- sqrt(0.75^2-(x-2)^2)+3.35
coords <- data.frame(x,y)

y <- -sqrt(0.75^2-(x-2)^2)+3.35
coords1 <- data.frame(x,y)[order(-y),]

coords <- rbind(coords,coords1)
coords[,1] <- coords[,1] + Letter_position*5 - 5

B <- gUnion(B, SpatialLines(list(Lines(Line(coords), ID="a"))))

#B_loop
y <- sqrt(0.75^2-(x-2)^2)+1.85
coords <- data.frame(x,y)

y <- -sqrt(0.75^2-(x-2)^2)+1.85
coords1 <- data.frame(x,y)[order(-y),]

coords <- rbind(coords,coords1)
coords[,1] <- coords[,1] + Letter_position*5 - 5

B <- gUnion(B, SpatialLines(list(Lines(Line(coords), ID="a"))))
plot(B, add=T)
}


#####C
if(Letter_chosen == "C"){
x <- seq(1.5,3.3, by = 0.01)
y <- sqrt(1.5^2-(x-3)^2)+2.6
coords <- data.frame(x,y)[order(-x),]

y <- -sqrt(1.5^2-(x-3)^2)+2.6
coords1 <- data.frame(x,y)

coords <- rbind(coords,coords1)
coords[,1] <- coords[,1] + Letter_position*5 - 5

C <- SpatialLines(list(Lines(Line(coords), ID="a")))
plot(C, add=T)
}


#####D
if(Letter_chosen == "D"){
coords <- rbind(c(1.75,1.1), c(1.75,4.1))
coords[,1] <- coords[,1] + Letter_position*5 - 5
D <- SpatialLines(list(Lines(Line(coords), ID="a")))

x <- seq(1.75,3.25, by = 0.01)
y <- sqrt(1.5^2-(x-1.75)^2)+2.6
coords <- data.frame(x,y)

y <- -sqrt(1.5^2-(x-1.75)^2)+2.6
coords1 <- data.frame(x,y)[order(-y),]

coords <- rbind(coords,coords1)
coords[,1] <- coords[,1] + Letter_position*5 - 5

D <- gUnion(D, SpatialLines(list(Lines(Line(coords), ID="a"))))
plot(D, add=T)
}


#####E
if(Letter_chosen == "E"){
coords <- rbind(c(1.75,1.3), c(1.75,4.1))
coords[,1] <- coords[,1] + Letter_position*5 - 5
E <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords1 <- rbind(c(1.75,1.3), c(3.5,1.3))
coords1[,1] <- coords1[,1] + Letter_position*5 - 5
E <- gUnion(E, SpatialLines(list(Lines(Line(coords1), ID="a"))))

coords2 <- rbind(c(1.75,2.6), c(3.5,2.6))
coords2[,1] <- coords2[,1] + Letter_position*5 - 5
E <- gUnion(E, SpatialLines(list(Lines(Line(coords2), ID="a"))))

coords3 <- rbind(c(1.75,4.1), c(3.5,4.1))
coords3[,1] <- coords3[,1] + Letter_position*5 - 5
E <- gUnion(E, SpatialLines(list(Lines(Line(coords3), ID="a"))))

plot(E, add=T)
}


#####F
if(Letter_chosen == "F"){
coords <- rbind(c(1.75,1.3), c(1.75,4.1))
coords[,1] <- coords[,1] + Letter_position*5 - 5
F_let <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords1 <- rbind(c(1.75,2.6), c(3.5,2.6))
coords1[,1] <- coords1[,1] + Letter_position*5 - 5
F_let <- gUnion(F_let, SpatialLines(list(Lines(Line(coords1), ID="a"))))

coords2 <- rbind(c(1.75,4.1), c(3.5,4.1))
coords2[,1] <- coords2[,1] + Letter_position*5 - 5
F_let <- gUnion(F_let, SpatialLines(list(Lines(Line(coords2), ID="a"))))

plot(F_let, add=T)
}


#####G
if(Letter_chosen == "G"){
x <- seq(1.5,3.3, by = 0.01)
y <- sqrt(1.5^2-(x-3)^2)+2.6
coords <- data.frame(x,y)[order(-x),]

y <- -sqrt(1.5^2-(x-3)^2)+2.6
coords1 <- data.frame(x,y)

coords <- rbind(coords,coords1)
coords[,1] <- coords[,1] + Letter_position*5 - 5

G <- SpatialLines(list(Lines(Line(coords), ID="a")))

#Gstick end
coords <- rbind(c(coords[nrow(coords),]$x, coords[nrow(coords),]$y), 
                c(coords[nrow(coords),]$x, 2.4),
                c(coords[nrow(coords),]$x-0.9, 2.4))
G <- gUnion(G, SpatialLines(list(Lines(Line(coords), ID="a"))))
plot(G, add=T)
}


#####H
if(Letter_chosen == "H"){
coords <- rbind(c(1.75,1.1), c(1.75,4.1))
coords[,1] <- coords[,1] + Letter_position*5 - 5
H <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords <- rbind(c(1.75,2.6), c(3.5,2.6))
coords[,1] <- coords[,1] + Letter_position*5 - 5
H <- gUnion(H, SpatialLines(list(Lines(Line(coords), ID="a"))))

coords <- rbind(c(3.5,1.1), c(3.5,4.1))
coords[,1] <- coords[,1] + Letter_position*5 - 5
H <- gUnion(H, SpatialLines(list(Lines(Line(coords), ID="a"))))

plot(H, add=T)
}


#####I
if(Letter_chosen == "I"){
coords <- rbind(c(1.5,1.3), c(3.5,1.3))
coords[,1] <- coords[,1] + Letter_position*5 - 5
I <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords <- rbind(c(2.5,1.3), c(2.5,4.1))
coords[,1] <- coords[,1] + Letter_position*5 - 5
I <- gUnion(I, SpatialLines(list(Lines(Line(coords), ID="a"))))

coords <- rbind(c(1.5,4.1), c(3.5,4.1))
coords[,1] <- coords[,1] + Letter_position*5 - 5
I <- gUnion(I, SpatialLines(list(Lines(Line(coords), ID="a"))))

plot(I, add=T)
}


#####J
if(Letter_chosen == "J"){
coords <- rbind(c(1.5,4.1), c(3.5,4.1))
coords[,1] <- coords[,1] + Letter_position*5 - 5
J <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords <- rbind(c(2.5,2), c(2.5,4.1))
coords[,1] <- coords[,1] + Letter_position*5 - 5
J <- gUnion(J, SpatialLines(list(Lines(Line(coords), ID="a"))))

#J loop
x <- seq(1.5,2.5, by = 0.01)
y <- -sqrt(0.5^2-(x-2)^2)+2
coords <- data.frame(x,y)

coords[,1] <- coords[,1] + Letter_position*5 - 5
J <- gUnion(J, SpatialLines(list(Lines(Line(coords), ID="a"))))

plot(J, add=T)
}


#####K
if(Letter_chosen == "K"){
coords <- rbind(c(1.5,1.1), c(1.5,4.1))
coords[,1] <- coords[,1] + Letter_position*5 - 5
K <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords <- rbind(c(3.1,4.1), c(1.5,2.6),
                c(1.5,2.6), c(3.1, 1.1)
                )
coords[,1] <- coords[,1] + Letter_position*5 - 5
K <- gUnion(K, SpatialLines(list(Lines(Line(coords), ID="a"))))

plot(K, add=T)
}


#####L
if(Letter_chosen == "L"){
coords <- rbind(c(1.5,3.9), c(1.5,1.3),
                c(1.5,1.3), c(3.2,1.3))
coords[,1] <- coords[,1] + Letter_position*5 - 5
L <- SpatialLines(list(Lines(Line(coords), ID="a")))

plot(L, add=T)
}


#####M
if(Letter_chosen == "M"){
coords <- rbind(c(1.1,1.3), c(1.75,4),
                c(1.75,4), c(2.5,2.3),
                c(2.5,2.3), c(3.25,4),
                c(3.25,4), c(3.9,1.3)
                )
coords[,1] <- coords[,1] + Letter_position*5 - 5
M <- SpatialLines(list(Lines(Line(coords), ID="a")))

plot(M, add=T)
}


#####N
if(Letter_chosen == "N"){
coords <- rbind(c(1.1,1.3), c(2,3.5),
                c(2,3.5), c(3,1.3),
                c(3,1.3), c(3.9,3.5)
                )
coords[,1] <- coords[,1] + Letter_position*5 - 5
N <- SpatialLines(list(Lines(Line(coords), ID="a")))

plot(N, add=T)
}


#####O
if(Letter_chosen == "O"){
x <- seq(1.3,3.7, by = 0.001)
y <- sqrt(1.2^2-(x-2.5)^2+0.0001)+2.5
coords <- data.frame(x,y)

y <- -sqrt(1.2^2-(x-2.5)^2+0.0001)+2.5
coords1 <- data.frame(x,y)[order(-x),]

coords <- rbind(coords,coords1)
coords[,1] <- coords[,1] + Letter_position*5 - 5

O <- SpatialLines(list(Lines(Line(coords), ID="a")))

plot(O, add=T)
}


#####P
if(Letter_chosen == "P"){
coords <- rbind(c(2,1.3), c(2,4.1),
                c(2,4.1), c(3.5,4.1),
                c(3.5,4.1), c(3.5,2.6),
                c(3.5,2.6), c(2,2.6))
coords[,1] <- coords[,1] + Letter_position*5 - 5
P <- SpatialLines(list(Lines(Line(coords), ID="a")))

plot(P, add=T)
}


#####Q
if(Letter_chosen == "Q"){
x <- seq(1.3,3.7, by = 0.001)
y <- sqrt(1.2^2-(x-2.5)^2+0.0001)+2.5
coords <- data.frame(x,y)

y <- -sqrt(1.2^2-(x-2.5)^2+0.0001)+2.5
coords1 <- data.frame(x,y)[order(-x),]

coords <- rbind(coords,coords1)
coords[,1] <- coords[,1] + Letter_position*5 - 5
Q <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords <- rbind(c(2.7,2), c(3.7,1.3))
coords[,1] <- coords[,1] + Letter_position*5 - 5
Q <- gUnion(Q, SpatialLines(list(Lines(Line(coords), ID="a"))))

plot(Q, add=T)
}


#####R
if(Letter_chosen == "R"){
coords <- rbind(c(2,1.3), c(2,4.1),
                c(2,4.1), c(3.5,4.1),
                c(3.5,4.1), c(3.5,2.6),
                c(3.5,2.6), c(2,2.6),
                c(2,2.6), c(3.5,1.3))
coords[,1] <- coords[,1] + Letter_position*5 - 5
R <- SpatialLines(list(Lines(Line(coords), ID="a")))

plot(R, add=T)
}


#####S
if(Letter_chosen == "S"){
#Top S
x <- seq(2.5,3.1, by = 0.001)
y <- sqrt(0.75^2-(x-2.5)^2+0.0001)+3.25
coords <- data.frame(x,y)[order(-x),]

x <- seq(1.75,2.5, by = 0.001)
y <- sqrt(0.75^2-(x-2.5)^2+0.0001)+3.25
coords1 <- data.frame(x,y)[order(-x),]
coords <- rbind(coords,coords1)

y <- -sqrt(0.75^2-(x-2.5)^2+0.0001)+3.25
coords1 <- data.frame(x,y)
coords <- rbind(coords,coords1)

#Bottom S
x <- seq(2.5,3.25, by = 0.001)
y <- sqrt(0.75^2-(x-2.5)^2+0.0001)+1.75
coords1 <- data.frame(x,y)
coords <- rbind(coords,coords1)

y <- -sqrt(0.75^2-(x-2.5)^2+0.0001)+1.75
coords1 <- data.frame(x,y)[order(-x),]
coords <- rbind(coords,coords1)

x <- seq(1.75,2.5, by = 0.001)
y <- -sqrt(0.75^2-(x-2.5)^2+0.0001)+1.75
coords1 <- data.frame(x,y)[order(-x),]
coords <- rbind(coords,coords1)


coords[,1] <- coords[,1] + Letter_position*5 - 5
S <- SpatialLines(list(Lines(Line(coords), ID="a")))
plot(S, add=T)
}


#####T
if(Letter_chosen == "T"){
coords <- rbind(c(1,4), c(4,4))
coords[,1] <- coords[,1] + Letter_position*5 - 5
T_let <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords <- rbind(c(2.5,4), c(2.5,1.3))
coords[,1] <- coords[,1] + Letter_position*5 - 5
T_let <- gUnion(T_let, SpatialLines(list(Lines(Line(coords), ID="a"))))

plot(T_let, add=T)
}


#####U
if(Letter_chosen == "U"){
x <- seq(1.3,3.7, by = 0.001)
y <- -sqrt(1.2^2-(x-2.5)^2+0.0001)+2.5
coords <- data.frame(x,y)
coords[,1] <- coords[,1] + Letter_position*5 - 5
U <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords <- rbind(c(1.3,2.5), c(1.3,4))
coords[,1] <- coords[,1] + Letter_position*5 - 5
U <- gUnion(U, SpatialLines(list(Lines(Line(coords), ID="a"))))

coords <- rbind(c(3.7,2.5), c(3.7,4))
coords[,1] <- coords[,1] + Letter_position*5 - 5
U <- gUnion(U, SpatialLines(list(Lines(Line(coords), ID="a"))))

plot(U, add=T)
}


#####V
if(Letter_chosen == "V"){
coords <- rbind(c(1,4), c(2.5,1.3),
                c(2.5,1.3), c(4,4))
coords[,1] <- coords[,1] + Letter_position*5 - 5
V <- SpatialLines(list(Lines(Line(coords), ID="a")))

plot(V, add=T)
}


#####W
if(Letter_chosen == "W"){
coords <- rbind(c(1,4), c(2,1.3),
                c(2,1.3), c(2.5,2.5),
                c(2.5,2.5), c(3,1.3),
                c(3,1.3), c(4,4))
coords[,1] <- coords[,1] + Letter_position*5 - 5
W <- SpatialLines(list(Lines(Line(coords), ID="a")))

plot(W, add=T)
}


#####X
if(Letter_chosen == "X"){
coords <- rbind(c(1,4), c(4,1.3))
coords[,1] <- coords[,1] + Letter_position*5 - 5
X <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords <- rbind(c(1,1.3), c(4,4))
coords[,1] <- coords[,1] + Letter_position*5 - 5
X <- gUnion(X, SpatialLines(list(Lines(Line(coords), ID="a"))))

plot(X, add=T)
}


#####Y
if(Letter_chosen == "Y"){
coords <- rbind(c(1.5,4), c(2.5,3),
                c(2.5,3), c(3.5,4))
coords[,1] <- coords[,1] + Letter_position*5 - 5
Y <- SpatialLines(list(Lines(Line(coords), ID="a")))

coords <- rbind(c(2.5,1.3), c(2.5,3))
coords[,1] <- coords[,1] + Letter_position*5 - 5
Y <- gUnion(Y, SpatialLines(list(Lines(Line(coords), ID="a"))))

plot(Y, add=T)
}


#####Z
if(Letter_chosen == "Z"){
coords <- rbind(c(1,4), c(4,4),
                c(4,4), c(1,1.3),
                c(1,1.3), c(4,1.3))
coords[,1] <- coords[,1] + Letter_position*5 - 5
Z <- SpatialLines(list(Lines(Line(coords), ID="a")))

plot(Z, add=T)
}

}

#####
####
###
##
#END