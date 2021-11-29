defmodule RockeliveryWeb.FallbackController do
  use RockeliveryWeb, :controller

  alias Rockelivery.Error
  alias RockeliveryWeb.ErrorView

  def call(conn, {:error, %Error{status: status, result: result}}) do
    conn
    |> put_status(status)
    |> put_view(ErrorView)
    |> render("error.json", result: result)
  end
end
