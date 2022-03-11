defmodule Rockelivery.Orders.Report do
  import Ecto.Query

  alias Rockelivery.{Item, Order, Repo}

  @default_block_size 500

  def create(filename \\ "report.csv") do
    query = from order in Order, order_by: order.user_id

    Repo.transaction(fn ->
      query
      |> Repo.stream(max_rows: @default_block_size)
      |> Stream.chunk_every(@default_block_size)
      |> Stream.flat_map(fn chunk -> Repo.preload(chunk, :items) end)
      |> Enum.map(&parse_line/1)
    end)
  end

  defp parse_line(%Order{user_id: user_id, payment_method: payment_method, items: items}) do
    items_string = Enum.map(items, &item_string/1)

    "#{user_id},#{payment_method},#{items_string}#{50.0}\n"
  end

  defp item_string(%Item{category: category, description: description, price: price}) do
    "#{category},#{description},#{price},"
  end
end
