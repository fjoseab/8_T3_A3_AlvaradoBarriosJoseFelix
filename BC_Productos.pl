
% articulo(clave, descripcion, precio)
producto(pr1, computadora, 15).
producto(pr2, raton_alambrico, 10).
producto(pr3, proyector, 10).
producto(pr4, adaptador_vga, 10).
producto(pr5, raton_inalambrico, 5).
producto(pr6, memoria_usb, 5).
producto(pr7, disco_externo, 5).
producto(pr8, escritorio, 100). 

% inventario(clave, existencias)
inventario(pr1, 32).
inventario(pr2, 4).
inventario(pr3, 5).
inventario(pr4, 64).
inventario(pr5, 12).
inventario(pr6, 10).
inventario(pr7, 89).
inventario(pr8, 2).

% cliente(nombre, ciudad, calificacion-credito)
cliente(ana, fresnillo, 5).
cliente(maria, jerez, 4).
cliente(luis, jerez, 2).
cliente(juan, zacatecas, 3).
cliente(gerardo, gaudalupe, 4).
cliente(david, zacatecas, 5).
cliente(perla, gaudalupe, 4).
cliente(omar, zacatecas, 3).
cliente(lucia, jerez, 4).
cliente(diana, fresnillo, 1).


%1.- clientes de ciudad dada
clientes_ciudad(Nombre, Ciudad) :- cliente(Nombre, Ciudad, _). 
%Prueba clientes_ciudad(Nombre, zacatecas). cambiar ciudad por la que dese consultar.

%2.- cientes con  con una calificación crediticia determinada
clientes_calif(Nombre, Calificacion) :- cliente(Nombre, _, Calificacion).
%Prueba clientes_calif(Nombre, 5). cambiar calificacion por la que dese consultar.

%3.- clientes en una ciudad determinada con una calificación de crédito determinada.
clientes_ciudCalif(Nombre, Ciudad, Calificacion) :- cliente(Nombre, Ciudad, Calificacion).
%Prueba clientes_ciudCalif(Nombre, zacatecas, 3). cambiar calificacion y ciudad por la que dese consultar

%4.- cantidad limite en existencias para un artículo dado.
producto_cantidad(Prod, Cantidad):- producto(NumProd, Prod, _) , inventario(NumProd, Cantidad).
%Prueba producto_cantidad(memoria_usb, Cantidad). cambiar Prod por la que dese consultar.

%5.- número de artículo para un nombre de artículo determinado.
producto_numero(Prod, NumProd):- producto(NumProd, Prod, _).
%Prueba producto_numero(computadora, NumProd). cambiar Prod por la que dese consultar.

%6.- nivel de inventario para un número de artículo dado.
producto_cantidadPorNum(NumProd, Cantidad):- inventario(NumProd, Cantidad).
%Prueba producto_cantidadPorNum(pr1, Cantidad). cambiar NumProd por la que dese consultar.

%7.- mostrar la cantidad de artículos que hay para cada artículo. 
productos_cantidad(Prod, Cantidad):- producto(NumProd, Prod, _) , inventario(NumProd, Cantidad).
%Prueba productos_cantidad(Prod, Cantidad).