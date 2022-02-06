function [sinusoid] = createWaveform(frequency,fs,duration,A)
fs = 8000;
T=1/fs;
psi = [0:2*pi];
sinusoid = A.*cos(2.*pi.*frequency.*duration.*T+psi);
end