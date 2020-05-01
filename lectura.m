clc;
clear;

%importamos la memoria compartida
loadlibrary('smClient64.dll','./smClient.h')

%creamos la memoria compartida
%en este caso la creamos desde el panel

%abrir la memoria compartida 
calllib('smClient64','openMemory','memEnteros',1)

x=10;
y=5;

while true
    %escribir en MC
    calllib('smClient64','setInt','memEnteros',0,x);
    calllib('smClient64','setInt','memEnteros',1,y);
    x = x+1;
end

%leer en la MC
retInt = calllib('smClient64','getInt','memEnteros',1)

%liberar la MC
calllib('smClient64','freeViews')
unloadlibrary smClient64