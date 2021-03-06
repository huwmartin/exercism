defmodule ListOps do
  # Please don't use any external modules (especially List) in your
  # implementation. The point of this exercise is to create these basic functions
  # yourself.
  #
  # Note that `++` is a function from an external module (Kernel, which is
  # automatically imported) and so shouldn't be used either.

  @spec count(list) :: non_neg_integer
  def count([]) do
    0
  end

  def count([head | tail]) do
    count(tail, 1)
  end

  def count([], counter) do
    counter
  end

  def count([head | tail], counter) do
    count(tail, counter + 1)
  end

  @spec reverse(list) :: list
  def reverse(l) do

  end

  @spec map(list, (any -> any)) :: list
  def map([], f) do
    []
  end

  def map([head | tail], f) do
    [f.(head)|map(tail, f)]
  end

  @spec filter(list, (any -> as_boolean(term))) :: list
  def filter(l, f) do

  end

  @type acc :: any
  @spec reduce(list, acc, ((any, acc) -> acc)) :: acc
  def reduce(l, acc, f) do

  end

  @spec append(list, list) :: list
  def append(a, b) do

  end

  @spec concat([[any]]) :: [any]
  def concat(ll) do

  end
end
