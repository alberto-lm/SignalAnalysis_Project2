clc;
clear;

recorder = audiorecorder;
disp('Start speaking.');
recordblocking(recorder,1);
disp('End of Recording.');
play(recorder);

[M,freq]=espectro(recorder.getaudiodata(), 1000);