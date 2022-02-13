function [tone]= note(keynum,relDuration,fullDuration,fs)
duration=relDuration*fullDuration;
abstand=abs(49-keynum);
faktor=abstand/(49-keynum);
f=440;
if faktor>0
    for i=1:abstand
        f=f/(2^(1/12));
    end
else 
    for i=1:abstand
        f=f*2^(1/12);
    end
end
tone=createWaveform(f,fs,duration,1);
end