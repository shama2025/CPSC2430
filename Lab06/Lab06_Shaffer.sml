(*
    Author: Marcus Shaffer
    Date: 3-17-2025
    Purpose: This SML file demonstrates the us
*)

(*Problem 1
    These series of functions take two integers and check if
    they are between 0 an 9 and then output the solution as a string
*)
(*This function checks if two numbers are between 0 and 9*)
fun checkBetween0and9(a) = let fun isBetween0an9 n = n>= 0 andalso n <= 9 in isBetween0an9 a end;

(*This function takes the quotient and maps it to a string value*)
fun mapToString (quotient) =
    case quotient of
        0 => " zero" |
        1 => " one" |
        2 => " two" |
        3 => " three" |
        4 => " four" |
        5 => " five" |
        6 => " six" |
        7 => " seven" |
        8 => " eight" |
        9 => " nine";
(*This function divides two integers and concatenates the "The answer is" string to the mapped string*)
fun mydiv(a,b) = if checkBetween0and9(a div b) then "The answer is" ^ mapToString(a div b) else "Error: Numbers not between 0 and 9";

(*Problem 2
    This function will check the number of elements in a list and apply a
    function across the list. If there are 3 >= elements, then first three elements, multiply each of them by 5, add them together
    if there are 3 < elements, each element is multitplied by 10 and then added
*)

(*This function will use pattern matching to single out 2 element list (Then multiply values by 10 and then add them together)
and also only multiply all values and then add together the first 3 elements in the list*)
fun mylistmult(a::b::[]) = foldr (op +) 0 (map(fn x => x*10) [a,b])
| mylistmult(a::b::c::_) = foldr (op +) 0 (map(fn x => x*5) [a,b,c])
| mylistmult([]) = 0
| mylistmult([a]) = foldr (op +) 0 (map(fn x => x*10) [a]);