defmodule Rockelivery do
  alias Rockelivery.Users.Create, as: UserCreate
  alias Rockelivery.Users.Get, as: UserGet

  defdelegate create_user(params), to: UserCreate, as: :call
  defdelegate get_user_by_id(id), to: UserGet, as: :by_id
end
