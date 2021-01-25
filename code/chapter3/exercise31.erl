-module(exercise31).
-export([sum/1, sum/2]).

sum(0) -> 0;
sum(N) -> N + sum(N-1).

sum(N, N) -> N;
sum(N, M) when N < M ->
    M + sum(N, M -1).
%% don't handle N > M so fails abnormally    