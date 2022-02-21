defmodule Rockelivery.Order.Create do
  import Ecto.Query

  alias Rockelivery.{Error, Item, Order, Repo}

  def call(params) do
    fetch_items(params)
  end

  defp fetch_items(%{"items" => items_params}) do
    items_ids = Enum.map(items_params, fn item -> item["id"] end)

    query = from item in Item, where: item.id in ^items_ids

    Repo.all(query)
  end
end
