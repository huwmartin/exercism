-module(rna_transcription).
-export([to_rna/1]).

to_rna(String) ->
  lists:map(fun transcribe/1, string:to_upper(String)).
	
transcribe($C) ->
  $G;
transcribe($G) ->
  $C;
transcribe($T) ->
  $A;
transcribe($A) ->
  $U.