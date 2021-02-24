clear all;

files = dir('*.wav');

for i = 1:length(files)
    [y, fs] = audioread(files(i).name);
    y = y(:, 1);
    y1 = resample(y, 16000, fs)
    audiowrite(['output\' files(i).name], y1, 16000)
end