%ejercicio 1 
es_padre(abraham,herbert).
es_padre(abraham,homero).
es_padre(clancy,marge).
es_padre(clancy,patty).
es_padre(clancy,selma).
es_padre(homero,bart).
es_padre(homero,lisa).
es_padre(homero,maggie).

es_madre(mona,herbert).
es_madre(mona,homero).
es_madre(jacqueline,marge).
es_madre(jacqueline,patty).
es_madre(jacqueline,selma).
es_madre(marge,bart).
es_madre(marge,lisa).
es_madre(marge,maggie).
es_madre(selma,ling).


es_abuelo(X,Y) :- es_padre(X,Z) , es_padre(Z,Y). % ,=and  ;=or
es_abuelo(X,Y) :- es_padre(X,Z) , es_madre(Z,Y).
es_abuela(X,Y) :- es_madre(X,Z) , es_padre(Z,Y).
es_abuela(X,Y) :- es_madre(X,Z) , es_madre(Z,Y).

son_hermanos(X,Y) :- (es_padre(M,X) , es_padre(M,Y)) , X \= Y.  % parentesis para separar condiciones , \= diferente 


es_tio(X,Y) :- son_hermanos(X,P),
               (es_padre(P,Y) ; es_madre(P,Y)).

son_primos(X,Y) :- (es_padre(P,X) ; es_madre(P,X)) , 
                   (es_padre(M,Y) ; es_madre(M,Y)) ,
                   son_hermanos(P,M).



%ejercicio 2

%venta_hostiles(enemigo,corea_del_sur).
%estadounidense (col_west).

%enemigo(X) :- venta_hostiles(enemigo,corea_del_sur) , 
              %estadounidense (col_west).