function [s] = ModQAM(Xi,Xq,f0,fs)
% Xi samples of the in-phase signal
% Xq samples of the in-quadrature signal
% f0 carrier frequency
% fs sampling frequency
N=length(Xi);
i=1:N;
s(i)=Xi.*cos((2*pi*f0*i)/fs)-Xq.*sin((2*pi*f0*i)/fs);
end