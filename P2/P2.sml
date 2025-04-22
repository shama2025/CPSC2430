(*
Marcus Shaffer
Date: 4/21/2025
Desc: This project Implements two versions of quicksort, not .quicksort
*)

(*
Splits a list into two
- elements less than the pivot
- elements greater than or equal to the pivot
Returns a pair of lists: (lessThan, greaterOrEqual)
*)
fun partition1(_, nil) = ([], [])
  | partition1(pivot, first::rest) =
      let
        val (less, greater) = partition1(pivot, rest)
      in
        if first < pivot then (first::less, greater)
        else (less, first::greater)
      end;

(*
This function removes the first pivot instance to allow cleaner sorting
Returns list (without the pivot value)
*)
fun remove_pivot(_, []) = []
  | remove_pivot(pivot, first::rest) =
      if first = pivot then rest
      else first :: remove_pivot(pivot, rest);

(*
Sorts a list using the quicksort algorithm
- Calls partition1 passing a list and pivot element
- Calls remove_pivot in case there are multiple repeated elements
also ensures a more even partition
Returns a sorted list: quicksort(less) @ [pivot] @ quicksort(greater)
*)
fun quicksort1(nil) = []
  | quicksort1(list) =
      let
        val pivot = List.nth(list, length list div 2)
        val filtered_list = remove_pivot(pivot,list)
        val (less, greater) = partition1(pivot,filtered_list)
      in
        quicksort1(less) @ [pivot] @ quicksort1(greater)
      end;

(*
Splits a list into two
- elements less than the pivot
- elements greater than or equal to the pivot
Returns a pair of lists: (lessThan, greaterOrEqual)
*)
fun partition2 (cmp, pivot, nil) = ([], [])
  | partition2 (cmp, pivot, first::rest) =
      let
        val (less, greater) = partition2 (cmp, pivot, rest)
      in
        if cmp(first, pivot) then (first::less, greater)
        else (less, first::greater)
      end;

(*
Implements quicksort using an operator function
- Comparison function, pivot, and list are passed to partition2
- Pivot calculated by finding middle element
- filtered_list: removes pivot element in list
*)
fun quicksort2(nil,cmp) = []
  | quicksort2(list,cmp) =
      let
        val pivot = List.nth(list, length list div 2)
        val filtered_list = remove_pivot(pivot,list)
        val (less, greater) = partition2(cmp,pivot,filtered_list)
      in
         quicksort2(less,cmp) @ [pivot] @ quicksort2(greater,cmp)
      end;