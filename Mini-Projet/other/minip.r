
set.seed(42,kind="Marsaglia-Multicarry");
#Ex.1-6 (a)
M = 1000000;
v=rgeom(M,prob=0.2)+1;
Z=matrix(v,nrow = 10);

#Ex.1-6 (b)
h = 10/10.8;
Tx = apply(Z,2,mean)
#apply(Z,2,mean):  2--colonne
Sx = h*Tx

#Ex.1-6 (c)
theta_0 = 0.2
hist(Sx, col="red",probability=TRUE,
     main="Histogrammes de Tx et Sx",
     breaks=50,
     xlab= "Estimations Sx et Tx de g(theta)",
     ylab ="Probabilite")
hist(Tx,col="blue", probability=TRUE, add=TRUE, density=15, breaks=50)
abline(v = 1/theta_0, lwd=3)
legend("topright", lwd=2, col=c("red", "blue", "black"),
       legend=c( "Sx", "Tx", "g(theta)"))
mean(Sx)
mean(Tx)

