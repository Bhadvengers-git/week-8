Isc = 207.4;
IL = [8.225, 16.45, 27.43, 54.88, 82.35,109.9, 164.9];
vL= [240, 240, 240, 240.2, 240.3, 240.4, 240.6];
Po = 240*IL*0.7;
Psc=644.9;
Woc=172.7;
Voc = 240;
Wsc = ((IL/Isc).^2)*Psc;
Wt = Woc + Wsc;
Pi = Po + Wt;
eff = 100*(Po./Pi);
regulation= (Voc- vL)./Voc *100;
VR = -1*regulation;
subplot(2,1,1)
plot(Po,eff);
legend("PF= 0.7");
xlabel('Output Power');
ylabel('Efficiency');
subplot(2,1,2)
plot(Po,VR);
xlabel('Output Power');
ylabel('Regulation');
legend("PF= 0.7");
%pf = 0.7