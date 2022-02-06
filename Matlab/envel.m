function [E] = envel(relDuration,fullDuration,fs)
duration = relDuration*fullDuration
attack=0.1*duration;
delay=0.125*duration;
sustain=0,625*duration;
release=0.15*duration;

Aattak =[1:10];
Adelay =[10:9];
Asustain=[8:6];
Arelase=[5:1];
%gibt das zurück und man müsste dann darauf dann note aufrufen
A=[Aattak,Adelay,Asustain,Arelase]
%[E] =[Aattak,Adelay,Asustain,Arelase]
abstand = diff([49,keynum]);
r = (2)^(1/12);
l = abs(49-keynum);
y=440;
for k = [1:l]
   x=2^(11/12)*y*(1/2);
   y=x;    
end
%oder man macht es halt so aber glaube nict das ist die Idee dahinter
f=fs;
tonepart = createWaveform(y,f,attack,Aattak);
tonepart2= createWaveform(y,f,delay,Adelay);
tonepart3=createWaveform(y,f,sustain, Asustain);
toneparte4=createWaveform(y,f,release, Arelease);

[E]=[tonepart, tonepart2, tonepart3, tonepart4];



end 