% to run tests:
% erl -make
% erl -noshell -eval "eunit:test(fizz_buzz, [verbose])" -s init stop

-module(fizz_buzz_tests).
-import(fizz_buzz, [fizz_buzz/1]).
-include_lib("eunit/include/eunit.hrl").

zero_test() ->
  ?assertEqual([], fizz_buzz(0)).

fizz_test() ->
  ?assertEqual([1, 2, "Fizz"], fizz_buzz(3)).

buzz_test() ->
  ?assertEqual([1, 2, "Fizz", 4, "Buzz"], fizz_buzz(5)).

fizz_buzz_test() ->
  ?assertEqual([1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"], fizz_buzz(15)).

error_when_called_with_flowers_test() ->
  ?assertException(error, function_clause, fizz_buzz("flowers")).