-module(fizz_buzz).
-export([fizz_buzz/1]).

fizz_buzz(Number) when is_number(Number) ->
  lists:map(fun print/1, lists:seq(1, Number)).

print(Number) when Number rem 3 =:= 0, Number rem 5 =:= 0 ->
  "FizzBuzz";
print(Number) when Number rem 3 =:= 0 ->
  "Fizz";
print(Number) when Number rem 5 =:= 0 ->
  "Buzz";
print(Number) ->
  Number.