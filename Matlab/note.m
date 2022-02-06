function [tone] = note(keynum,relDuration,fullDuration,fs)
abstand = diff([49,keynum]);
r = (2)^(1/12);
l = abs(49-keynum);
y=440;
for k = [1:l]
   x=2^(11/12)*y*(1/2);
   y=x;    
end
duration =fullDuration*relDuration;
f=fs;
tone = createWaveform(y,f,duration,1);
end