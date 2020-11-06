Isc = 207.4;
IL = [119,59.75, 39.89, 29.93, 23.95, 19.97,17.12];
ZL = [2,4,6,8,10,12,14];
vL= [238.1, 239, 239.3, 239.5, 239.5, 239.6, 239.7];
Po = 240*IL*1;
Psc=644.9;
Woc=172.7;
Voc = 240;
Wsc = ((IL/Isc).^2)*Psc;
Wt = Woc + Wsc;
Pi = Po + Wt;
eff = 100*(Po./Pi);
regulation= (Voc- vL)./Voc *100;
subplot(2,1,1)
plot(Po,eff);
legend("PF= 1");
xlabel('Output Power');
ylabel('Efficiency');
subplot(2,1,2)
plot(Po,regulation);
xlabel('Output Power');
ylabel('Regulation');
legend("PF= 1");
%pf = 1