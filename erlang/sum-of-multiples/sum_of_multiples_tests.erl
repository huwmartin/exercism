-module(sum_of_multiples_tests).
-import(sum_of_multiples, [sum_of_multiples/1, sum_of_multiples/2]).
-include_lib("eunit/include/eunit.hrl").

sum_with_3_5_to_1_test() ->
  ?assertEqual(0, sum_of_multiples([3, 5], 1)).
  
sum_with_default_to_1_test() ->
  ?assertEqual(0, sum_of_multiples(1)).

sum_with_3_5_to_3_test() ->
  ?assertEqual(3, sum_of_multiples([3, 5], 4)).
  
sum_with_default_to_3_test() ->
  ?assertEqual(3, sum_of_multiples(4)).

sum_with_3_5_to_10_test() ->
  ?assertEqual(23, sum_of_multiples([3, 5], 10)).

sum_with_default_to_10_test() ->
  ?assertEqual(23, sum_of_multiples(10)).

sum_with_3_5_to_100_test() ->
  ?assertEqual(2318, sum_of_multiples([3, 5], 100)).
  
sum_with_default_to_100_test() ->
  ?assertEqual(2318, sum_of_multiples(100)).

sum_with_3_5_to_1000_test() ->
  ?assertEqual(233168, sum_of_multiples([3, 5], 1000)).
  
sum_with_default_to_1000_test() ->
  ?assertEqual(233168, sum_of_multiples(1000)).

sum_with_7_13_17_to_20_test() ->
  ?assertEqual(51, sum_of_multiples([7,13,17], 20)).

sum_with_4_6_to_15_test() ->
  ?assertEqual(30, sum_of_multiples([4,6], 15)).

sum_with_5_6_8_to_150_test() ->
  ?assertEqual(4419, sum_of_multiples([5, 6, 8], 150)).

sum_with_43_47_to_10000_test() ->
  ?assertEqual(2203160, sum_of_multiples([43,47], 10000)).

sum_with_1_to_100_test() ->
  ?assertEqual(4950, sum_of_multiples([1], 100)).

sum_with_empty_to_10000_test() ->
  ?assertEqual(0, sum_of_multiples([], 10000)).
  
error_when_called_with_flowers_test() ->
  ?assertException(error, function_clause, sum_of_multiples("flowers")),
  ?assertException(error, function_clause, sum_of_multiples([3, 5], "flowers")).