%Aufgabe c) 
%Aufrufen einer Tonleiter
l=[40:51];
h=[1:length(l)];

%h=note(l,1,1,8000)

for k=1:length(l)
key=l(k);  
a= note(key,1,1,8000); 
sound(a)
pause(0.5)
end

%sound(h)