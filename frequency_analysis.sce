// process signal fft
// Copyright (C) Imam Hossain (emamh@gmail.com)

Fs = 55; // sampling frequency
T = 1/Fs; // sampling period
N = length(gy); // number of samples
tv = (0:N-1)*T; // time vector

//plot(tv, gy);
//xlabel("Time (s)", "fontsize", 4);
//ylabel("$\text{Value}$", "fontsize", 4);

Y = fft(gy); // calculate Fourier Transform

P2 = abs(Y/N);
P1 = P2(1:N/2+1);
P1(2:$-1) = 2*P1(2:$-1);

f = Fs*(0:(N/2))/N; // frequency vector

f = f'

plot(f,P1, 'Color', 'k', 'LineWidth', 2)
xlabel("Frequency (Hz)", "fontsize", 4);
ylabel("$\text{Magnitude}$", "fontsize", 4);
