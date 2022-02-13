function E = envel(relDuration,fullDuration,fs)
duration = relDuration*fullDuration;
 zeitvektor= (0:1/fs:duration);
l=length(zeitvektor); %2001
attack = (0:(1/200):1);
delay = (1:-(0.1/((l*0.125)-1)):0.9);
sustain= (0.8:-(0.2/((l*0.625)-1)):0.6);
release = (0.5:-(0.5/((l*0.15)-1)):0);
size([attack, delay, sustain, release]);
E=[attack, delay, sustain, release];
end