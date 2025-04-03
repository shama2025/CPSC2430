/*Base Clauses*/
fourth([a,b,c,d,e]).
fourth([a,b,c]).

firstPair([test,test,mic,check]).
firstPair([a,b,c]).

deleteThird([1,2,3,4],[1,2,4]).
deleteThird([1,2],[1,2,5]).

prefix([1,2,3],[1,2,3,4,5]).
prefix([1,2,3],[1,2,4,5]).

/*First Pair Predicate*/
firstPair([Y, Y|_]).

/*Delete Third Predicate*/
deleteThird([A,B,_|C],[A,B| C]).

/*Fourth Predicate*/
fourth([_, _, _, X|_], X).

/*Prefix Predicate*/
prefix([], _).
prefix([X|Xs], [X|Ys]) :-
    prefix(Xs, Ys).
