(*
    Author: Marcus Shaffer
    Date: 2-25-2025
    Purpose: This SML file demonstrates the use of patterns
*)

(* Question 1
    Name: double_first
    Desc: Doubles the first element in a given List
    Args: first:: => List of elements, but only maps the first element to a variable
    Return: nil or single element integer list
*)
fun double_first(nil) = nil
|   double_first(first::_) = (first + first) :: nil;

(*Checks the nil case*)
double([]);
(*Checks the other case*)
double([1,2,3,4]);

(*Question 2
    Name: member
    Desc: Checks if element is in the list
    Args: Element => single integer first::rest => List of integers
    Return: Boolean value depending if element exists in List
*)
fun member(element, nil) = false
|   member(element, first::rest) = if element = first then true else member(element,rest);

(*Checks if element exists case*)
member(4,[1,2,3,4]);
(*Checks if element doesn't exist*)
member(5,[1,2,3,4]);

(*Question 3
    Name: three_in_a_row
    Desc: Checks if there are three elements in a row in ascending order
    Args: List:: => List of integers depending on case only n elements will be mapped to variable
    Return: True/False dependent on cases
*)
fun three_in_a_row(nil) = false
|   three_in_a_row(first::nil) = false
|   three_in_a_row(first::second::nil) = false
|   three_in_a_row(first::second::third::rest) = if first < second andalso second < third then true else three_in_a_row(second::third::rest);

(*Checks if list is nil*)
three_in_a_row([]);
(*Checks if list has 3 consecutive ascending values*)
three_in_a_row([1,2,3,4,5]);
(*Checks if list has 1 consecutive ascending values*)
three_in_a_row([1,1,4,5]);
(*Checks if list has 2 consecutive ascending values*)
three_in_a_row([1,2,1,4,5]);