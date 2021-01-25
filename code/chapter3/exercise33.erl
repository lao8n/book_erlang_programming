-module(exercise33).
-export([print_ints/1]).

print_ints(N) when N >= 0 -> 
    print_ints_from_to_by(1, N, 1).

print_ints_from_to_by(From, To, By) when From < To ->
    io:format("Number:~p~n", [From]),
    print_ints_from_to_by(From + By, To, By);
print_ints_from_to_by(From, To, _) when From == To -> 
    io:format("Number:~p~n", [From]).