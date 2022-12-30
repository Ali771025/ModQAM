function [Xi, Xq, Delay] = DeModQAM(s,f0,fs)
% Design of FIR
Nf=160;
b=fir1(Nf-1, f0/fs); % low-pass filter
%number of taps
%Frequency Demodulation
N=length(s);
Xi=zeros(1,N);
Xq=zeros(1,N);
i=1:N;
Xi=2*s.*cos(2*pi*f0*i/fs);
Xq=-2*s.*sin(2*pi*f0*i/fs);
% Filtering out the 2*f0 component
Xi=conv(Xi,b);
Xq=conv(Xq,b);
Delay=round((Nf-1)/2); % Filtering Delay
end