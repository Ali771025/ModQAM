function [x,N]=SinusoidalSource(fm,T,fs)
% fm: sinusoid frequency
% fs: sampling frequency (fs>2*fm)
% T: duration (sec)
N=floor(T*fs); % Number of samples
i=1:N;
x=cos(2*pi*fm*i/fs);
end