defmodule RockeliveryWeb.OrdersController do
  use RockeliveryWeb, :controller

  alias Rockelivery.Order
  alias RockeliveryWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Order{} = order} <- Rockelivery.create_order(params) do
      conn
      |> put_status(:created)
      |> render("create.json", order: order)
    end
  end
end
