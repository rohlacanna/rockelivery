defmodule Rockelivery.Users.Get do
  alias Ecto.UUID
  alias Rockelivery.{Repo, User}

  def by_id2(id) do
    with {:ok, uuid} <- UUID.cast(id),
         %User{} = user <- Repo.get(User, uuid) do
      {:ok, user}
    else
      :error -> {:error, %{status: :bad_request, result: "Invalid id format!"}}
      nil -> {:error, %{status: :not_found, result: "User not found!"}}
    end
  end

  def by_id(id) do
    case UUID.cast(id) do
      :error -> {:error, %{status: :bad_request, result: "Invalid id format!"}}
      {:ok, uuid} -> get(uuid)
    end
  end

  defp get(id) do
    case Repo.get(User, id) do
      nil -> {:error, %{status: :not_found, result: "User not found!"}}
      user -> {:ok, user}
    end
  end
end
