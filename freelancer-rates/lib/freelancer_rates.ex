defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount * (100 - discount) / 100.0
  end

  def monthly_rate(hourly_rate, discount) do
    (hourly_rate * 22)
    |> daily_rate
    |> apply_discount(discount)
    |> ceil
  end

  def days_in_budget(budget, hourly_rate, discount) do
    (budget * 100 / (100 - discount) / hourly_rate / 8.0)
    |> Float.floor(1)
  end
end
