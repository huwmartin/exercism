-module(accumulate).
-export([accumulate/2]).

accmumulate(_, []) -> [];
accumulate(Function, [Head|Tail]) ->
  [Function(Head)|accumulate(Function, Tail)].