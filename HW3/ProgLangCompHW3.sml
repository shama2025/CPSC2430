(*Question 1*)
fun cube exp = exp * exp * exp;
cube 3; (*Output 27*)
(*Question 2*)
fun fourth list = List.nth(list, 4);
val newList = 1::2::3::4::5::[]; (*Output => [5])

(*Question 3*)
fun red3 (tuple:int * string * bool) = (#1 tuple, #3 tuple);
red3 (5,"Hello", true); (*Output: (5,true)*)

(*Question 4
    explode comverts string to list=> ['h','e','l','l','o']

    tl x2 grabs all elements except first => ['l','l','o']

    hd gets first element in list => ['l']

    str converts element to string => "l"

    ^s appends to front of string s => "lhello"

   output => "lhello
*)

(* Question 5
    Function checks if parameter is null and returns 0
    If not the function recursivly produces a running sum of the given list
    i.e.
    list = 1,2,3,4,5
    hd(list) => 1 + whatd_do_i_do (tl list) => 2,3,4,5
    then this process repeats to get
    output => 15

*)

(* Question 6 *)
- fun less(e,nil) = nil
= |   less(e,L) = if e > hd L then hd L :: less(e,tl L) else less(e,tl L);