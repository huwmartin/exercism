-module(sum_of_multiples).
-export([sum_of_multiples/1, sum_of_multiples/2]).

%% When called with only a number without multipliers specified
%% we default to using 3 and 5 as our multipliers.
sum_of_multiples(Number) when is_number(Number) ->
  sum_of_multiples([5], Number, total_for_multiplier(3, Number - 1, 0)).

%% When an empty list of multipliers is supplied we return 0.
sum_of_multiples([], _) ->
  0;
sum_of_multiples([Multiplier|Tail], Number) when is_number(Number) ->
  sum_of_multiples(Tail, Number, total_for_multiplier(Multiplier, Number - 1, 0)).

sum_of_multiples([], _, Sum) ->
  Sum;
sum_of_multiples([Multiplier|Tail], Number, Sum) ->
  sum_of_multiples(Tail, Number, Sum + total_for_multiplier(Multiplier, Number - 1, 0)).

total_for_multiplier(Multiplier, Number, Total) when Number < Multiplier ->
  Total;
total_for_multiplier(Multiplier, Number, Total) when Number rem Multiplier =:= 0 ->
  total_for_multiplier(Multiplier, Number - 1, Total + Number);
total_for_multiplier(Multiplier, Number, Total) ->
  total_for_multiplier(Multiplier, Number - 1, Total).