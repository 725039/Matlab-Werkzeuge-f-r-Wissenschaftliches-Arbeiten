function [sinusoid] = createWaveform(frequency,fs,duration,A)
    phi= 2*pi*rand;
    zeitvektor=[0:1/fs:duration]
    size(zeitvektor);
    sinusoid = A.*cos((2*pi*frequency)*zeitvektor+phi);
    size(cos((2*pi*frequency)*zeitvektor+phi));
end
