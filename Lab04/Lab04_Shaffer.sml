(*
    Author: Marcus Shaffer
    Date: 2-11-2025
    Purpose: This SML file demonstrates variable declarations and list operations
*)

(* Golden ratio approximation using phi formula *)
val phi = (1.0 + 2.23607) / 2.0;  (* phi is the golden ratio, calculated as (1 + sqrt(5)) / 2 *)

(* Integer division to find remainder *)
val remainder = 8675309 mod 42;  (* remainder holds the result of 8675309 modulo 42 *)

(* Tuple containing an integer, real number, and string *)
val mytuple = (5, 5.0, "hello");

(* List construction using the cons (::) operator *)
val mylist = "You" :: "choose" :: "the" :: "contents" :: "." :: [];

(* List concatenation using the @ operator *)
val newlist = ["three", "new", "strings"] @ mylist;

(* Integer list construction *)
val intlist = 0::1::2::3::[];

(* Adding an element to the beginning of intlist *)
val newintlist = [4] @ intlist;
