clc
clear;

%cargamos la memoria
loadlibrary('smClient64.dll','./smClient.h')

%abrimos la memoria para envio de movimiento
calllib('smClient64','openMemory','movimiento',2)
%abrimos la memoria para recuperar posiciones
calllib('smClient64','openMemory','posiciones',2)

movimiento_x = 0;

while true
    %escribimos 
    calllib('smClient64','setFloat','movimiento',0,movimiento_x)
    
    movimiento_x = movimiento_x+5;
    
    %leer las posiciones del cubo
    x = calllib('smClient64','getFloat','posiciones',0)
    y = calllib('smClient64','getFloat','posiciones',1)
    z = calllib('smClient64','getFloat','posiciones',2)
    
end


%liberamos