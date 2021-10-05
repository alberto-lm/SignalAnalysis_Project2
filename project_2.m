clc;
clear;
fs = 8000;
tr = 1;
recorder = audiorecorder(fs,8,1);
disp('Start speaking.');
recordblocking(recorder,tr);
disp('End of Recording.');
play(recorder);

audioSignal = recorder.getaudiodata();

figure;
t = 1/fs:1/fs:1;
plot(t,audioSignal);
title('Magnitud de la señal de audio');
xlabel('Tiempo (s)');
ylabel('Energía (J)');

[M,freq]=espectro(audioSignal, fs);