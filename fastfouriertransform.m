Fs = 72*10^3;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 512;             % Length of signal
t = (0:L-1)*T;        % Time vector
j = 0
freq = 2000
X = 3/2*(square(2*pi*freq*t)+1);
Y = fft(X);

P2 = abs(Y/L);
P1 = P2(2:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(1:(L/2))/L;
plot(1:256,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('Bin idex')
ylabel('|P1(f)|')
