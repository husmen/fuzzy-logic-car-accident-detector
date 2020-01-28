function Gerektirme()
global X mu_X mu_xi;

altsinir=0;
ustsinir=15;

xi_A=4;
Ucgen(altsinir,1,3,5,ustsinir,xi_A);
x_A = X;
mu_A = mu_X;
mu_xi_A = mu_xi;

xi_B=13;
Ucgen(altsinir,9,12,15,ustsinir,xi_B);
x_B = X;
mu_B = mu_X;
mu_xi_B = mu_xi;

mu_AgerekB = mu_xi_A.*mu_B;

plot(x_A,mu_A,'--',x_B,mu_B,'--',x_B,mu_AgerekB,'k')
tmp_y = 0:0.01:mu_xi_A;
line(xi_A*ones(size(tmp_y)),tmp_y,'Color','red','LineStyle','--')
tmp_x = xi_A:0.1:xi_B;
line(tmp_x,mu_xi_A*ones(size(tmp_x)),'Color','red','LineStyle','--')
text(xi_A,0.8,'A')
text(xi_B,0.8,'B')
