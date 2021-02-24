clear all;

[y, fs] = audioread('sunday.wav');
t = (1:length(y)) / fs;
my = movmean(y, 5);

%%
figure(1);
subplot(2, 1, 1);
plot(t, my);
hold on;
plot([t(6000), t(6000)], [-max(abs(my)), max(abs(my))], '-r');
plot([t(6800), t(6800)], [-max(abs(my)), max(abs(my))], '-r');
plot([t(20000), t(20000)], [-max(abs(my)), max(abs(my))], '-g');
plot([t(20800), t(20800)], [-max(abs(my)), max(abs(my))], '-g');
title('Details waveform of "Sunday"');
xlabel('Time (second)');
ylabel('Amplitude');
axis([-inf inf -max(abs(my)) max(abs(my))]);

subplot(2, 2, 3)
plot(t(6000:6800), my(6000:6800));
axis([-inf inf -max(abs(my)) max(abs(my))]);

subplot(2, 2, 4)
plot(t(20000:20800), my(20000:20800));
axis([-inf inf -max(abs(my)) max(abs(my))]);