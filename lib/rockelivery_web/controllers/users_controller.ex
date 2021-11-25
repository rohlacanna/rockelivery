defmodule RockeliveryWeb.UsersController do
  use RockeliveryWeb, :controller

  def create(conn, params) do
    Rockelivery.create_user(params)
  end
end
