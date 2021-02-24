clear all;

[y, fs] = audioread('name.wav');

y1 = resample(y, 16000, fs) %%重新採樣

audiowrite('name16k.wav', y1, 16000)