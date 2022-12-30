close all;
clear all;
clc;
fs=10000; % sample frequency
T=0.5; % signal duration (sec)
f0=3000; % center frequency
f1=200;
f2=350;
T=1;
[a,~]=SinusoidalSource(f1,T,fs);
[b,~]=SinusoidalSource(f1,T,fs);
[s] = ModQAM(a,b,f0,fs);
figure
[ pxx, f ] = PlotSpectrum(s,fs);
title('Modulated Signal')
[Xi, Xq, Delay] = DeModQAM(s,f0,fs);
figure
[ pxxi, fi ] = PlotSpectrum(Xi,fs);
title('In-phase demodulated Signal')
figure
[ pxxq, fq ] = PlotSpectrum(Xq,fs);
title('In-quadrature demodulated Signal')