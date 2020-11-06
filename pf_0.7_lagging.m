Isc = 207.4;
IL = [166.4, 83.9, 33.74, 16.9, 8.45];
vL= [235.8, 237.8, 239.1, 239.5, 239.7];
Po = 240*IL*0.7;
Psc=644.9;
Woc=172.7;
Voc = 240;
Wsc = ((IL/Isc).^2)*Psc;
Wt = Woc + Wsc;
Pi = Po + Wt;
eff = 100*(Po./Pi)
regulation= (Voc- vL)./Voc *100
subplot(2,1,1)
plot(Po,eff);
%ylim([0 150]);
legend("PF= 0.7");
xlabel('Output Power');
ylabel('Efficiency');
subplot(2,1,2)
plot(Po,regulation);
xlabel('Output Power');
ylabel('Regulation');
legend("PF= 0.7");
%pf = 0.7