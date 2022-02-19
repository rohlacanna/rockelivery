defmodule RockeliveryWeb.ItemsController do
  use RockeliveryWeb, :controller

  alias Rockelivery.Item
  alias RockeliveryWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Item{} = item} <- Rockelivery.create_item(params) do
      conn
      |> put_status(:created)
      |> render("create.json", item: item)
    end
  end
end
