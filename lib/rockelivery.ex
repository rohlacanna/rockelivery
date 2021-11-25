defmodule Rockelivery do
  alias Rockelivery.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
