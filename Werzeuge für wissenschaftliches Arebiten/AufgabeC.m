tonleiter=[40,42,44,45,47,49,51,52,51,49,47,45,44,42,40];
notes=[];
for i=tonleiter
    notes=[notes note(i,1/4,1,8000)];
end
sound(notes,8000)






