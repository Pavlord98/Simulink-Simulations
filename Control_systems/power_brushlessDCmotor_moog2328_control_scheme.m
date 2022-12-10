% clear; pack;pause(1);
FIL='Act3';
eval([ 'load -ascii ',[FIL,'.dat'] ]);
eval(['act=',FIL,';']);
tt=act(:,1);
KK=length(tt);
Lend=10;
t=act(1:KK-2-Lend,1);%-0.004;
D_angl  = act(1:KK-2-Lend,2)*pi/180;
Angle=[t,D_angl*180/pi];
Ts=5e-5;
%inertia
J=465.8e-7;%
%viscous f
F=49.387e-4*2/1000;%%
%resistance
Ra=0.1;%
Rb=0.1;%
Rc=0.1;%
%inductance
La=0.17e-3;%
Lb=0.17e-3;%
Lc=0.17e-3;%
%flux
Flux=3.75*[3^0.5/(100*pi*4)];%
Flat=120;
%number of pair of poles
p=4;
trap=sin((pi-Flat/180*pi)/2);
N=297.5;%
Ts=5e-5
