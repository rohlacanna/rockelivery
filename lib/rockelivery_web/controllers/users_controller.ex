defmodule RockeliveryWeb.UsersController do
  use RockeliveryWeb, :controller

  alias Rockelivery.User
  alias RockeliveryWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Rockelivery.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end

  def show(conn, %{"id" => id}) do
    with {:ok, %User{} = user} <- Rockelivery.get_user_by_id(id) do
      conn
      |> put_status(:ok)
      |> render("show.json", user: user)
    end
  end
end
