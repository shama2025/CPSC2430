 /*Base Relationships*/
parent(john, mary).
parent(john, james).
parent(mary, tom).
parent(james, jenny).
female(mary).
female(jenny).
male(john).
male(james).
male(tom).

/*Sister Prdeicate*/
sister(X,Y) :-
    not(X = Y),
    female(X),
    parent(Z,X),
    parent(Z,Y).

/*Mother Predicate*/
mother(X,Y) :-
    parent(X,Y),
    female(X).

/*Father Predicate*/
father(Z,X) :-
    parent(Z,X),
    male(X).

/*Grandson Predicate*/
grandson(X) :-
    parent(Z,X),
    parent(Z,X),
    male(X).