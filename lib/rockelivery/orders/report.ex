defmodule Rockelivery.Orders.Report do
  import Ecto.Query

  alias Rockelivery.{Order, Repo}

  def create(filename \\ "report.csv") do
    query = from order in Order, order_by: order.user_id

    Repo.transaction(fn ->
      query
      |> Repo.stream()
      |> Enum.into([])
      |> IO.inspect()
    end)
  end
end
