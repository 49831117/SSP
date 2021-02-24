clear all;

[y, fs] = audioread('SSP.wav');
my = movmean(y, 5);

%%
figure(1);
y1 = my;
plot(y1);
axis([-inf inf -1 1]);

%%
figure(2);
plot(y1(20500:20500 + 1999));
axis([-inf inf -max(abs(y1(20500:20500 + 1999))) max(abs(y1(20500:20500 + 1999)))]);

%%
figure(3);
plot(y1(20500:20500 + 511));
axis([-inf inf -max(abs(y1(20500:20500 + 511))) max(abs(y1(20500:20500 + 511)))]);

%%
figure(4);
subplot(2, 1, 1);
plot(y);
hold on;
plot([20500 20500], [1 -1], 'r-');
plot([20500 + 511 20500 + 511], [1 -1], 'r-');
xlabel('Sample');
ylabel('Amplitude');
axis([-inf inf -1 1]);

subplot(2, 1, 2);
plot(my(20500:20500 + 511));
hold on;
plot(my(20500:20500 + 511), '.b', 'MarkerSize', 6);
xlabel('Sample');
ylabel('Amplitude');
axis([-inf inf -max(abs(my(20500:20500 + 511))) max(abs(my(20500:20500 + 511)))]);