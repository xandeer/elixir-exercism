defmodule Secrets do
  def secret_add(secret) do
    &(secret + &1)
  end

  def secret_subtract(secret) do
    &(&1 - secret)
  end

  def secret_multiply(secret) do
    &(&1 * secret)
  end

  def secret_divide(secret) do
    &Kernel.div(&1, secret)
  end

  def secret_and(secret) do
    &Bitwise.&&&(secret, &1)
  end

  def secret_xor(secret) do
    &Bitwise.^^^(secret, &1)
  end

  def secret_combine(secret_function1, secret_function2) do
    &(&1 |> secret_function1.() |> secret_function2.())
  end
end
