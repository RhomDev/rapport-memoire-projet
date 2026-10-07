close all

figure1=figure(1);
axes1=axes('Parent',figure1,'FontSize',16);

p1=plot(ms/1000,speed_setpointrads,ms/1000,speed1rads);

set(p1(1),'DisplayName','Consigne','LineWidth',2);
set(p1(2),'DisplayName','Mesure','LineWidth',2);
grid on
title('Suivi en vitesse')
xlabel('Temps(s)','FontSize',16);
ylabel('Vitesse(rad/s)','FontSize',16);
legend(axes1,'show');

figure2=figure(2);
axes2=axes('Parent',figure2,'FontSize',16);

p2=plot(ms/1000,speed_setpointrads-speed1rads);

set(p2,'LineWidth',2);
grid on
title('Erreur en vitesse')
xlabel('Temps(s)','FontSize',16);
ylabel('Vitesse(rad/s)','FontSize',16);

figure3=figure(3);
axes3=axes('Parent',figure3,'FontSize',16);

p3=plot(ms/1000,pos_setpointrad,ms/1000,pos1rad);
set(p3(1),'DisplayName','Consigne','LineWidth',2);
set(p3(2),'DisplayName','Mesure','LineWidth',2);
grid on
title('Suivi en position')
xlabel('Temps(s)','FontSize',16);
ylabel('Position(rad)','FontSize',16);
legend(axes3,'show');

figure4=figure(4);
axes4=axes('Parent',figure4,'FontSize',16);

p4=plot(ms/1000,pos_setpointrad-pos1rad);
set(p4,'LineWidth',2);
grid on
title('Erreur en position')
xlabel('Temps(s)','FontSize',16);
ylabel('Position(rad)','FontSize',16);