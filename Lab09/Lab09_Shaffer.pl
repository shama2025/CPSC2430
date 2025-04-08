/*Base Cases*/
min(5, 3, Z).
min(3, 5, Z).

minList([5, 2, 8, 1], Out).
minList([9, 7, 5, 2], Out).

reverseOrdered([5, 3, 2, 1]).
reverseOrdered([5, 7, 2, 1]).

/*Min Predicate if X > Y*/
min(X, Y, Z) :-
    X > Y,
    Z is Y.

/*Min Predicate if X < Y*/
min(X, Y, Z) :-
    X < Y,
    Z is X.

/*MinList Predicate*/
minList(List, Out) :-
    sort(List, Sorted),
    nth0(0,Sorted,Out).

/*Reverse Order Predicate*/
reverseOrdered([_]).

reverseOrdered([X,Y|Rest]) :-
    X > Y,
    reverseOrdered([Y | Rest]).