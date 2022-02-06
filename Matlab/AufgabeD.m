ersteStimme =[56,55,56,55,56,50,54,52,49,49,0, 42,45,49,50,50,0,45,48,50,52,52,0,45,56,55];
bassStimme=[0,0,0,0,0,0,0,0,26,32,37,0,0,0,22,32,38,0,0,0,26,32,37,0,0,0];
%das was dir hier als "b" benennen ist kein B das ist ein h, wenn das ein B
%sein soll dann braucht das einen b Schlüssel!
length(ersteStimme)
length(bassStimme)
%sind gleichlang
%50=51 50 ist h und 38=39 38 ist h und 39 und 51 ist b
fuerElise = ersteStimme+bassStimme;
%aufrufen zuerst meiner nicht so gut funktionierenden envel funktion
A = envel(1/16,2,8000);
Elise = A*note(fuerElise, 1/16,2,8000);
sound(Elise);