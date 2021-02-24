clear all;

f = [8000, 12000, 15000, 17400, 21000];
fs = 44100;
t = 0:1/(fs - 1):1;
for i = 1:length(f)
    y = sin(2 * pi * f(i) * t);
    audiowrite([num2str(f(i) / 1000) 'kHz.wav'], y, fs);
end