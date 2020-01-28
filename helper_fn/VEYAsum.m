function VEcarpim()
global X mu_X mu_xi;
altsinir=0;
ustsinir=15;

Ucgen(altsinir,3,5,7,ustsinir,5.5)
x_A = X;
mu_A = mu_X;
mu_xi_A = mu_xi;

Ucgen(altsinir,4,9,12,ustsinir,5.5)
x_B = X;
mu_B = mu_X;
mu_xi_B = mu_xi;

mu_AveyaB = mu_A+mu_B-(mu_A.*mu_B);

plot(x_A,mu_A,'--', x_B,mu_B,'--',x_B,mu_AveyaB,'k')
mu_AveyaB = mu_xi_A+mu_xi_B-(mu_xi_A.*mu_xi_B)