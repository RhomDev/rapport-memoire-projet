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

p2=plot(ms/1000,torque_setpointNm);

fs=0.3021;
f=0.0026;
Cgrav=0.5079;

plot(ms,torque_setpointNm-f*speed1rads-fs*sign(speed1rads)-Cgrav)

set(p2,'LineWidth',2);
grid on
title('Couple moteur')
xlabel('Temps(s)','FontSize',16);
ylabel('Couple(Nm)','FontSize',16);