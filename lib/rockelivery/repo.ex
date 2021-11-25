defmodule Rockelivery.Repo do
  use Ecto.Repo,
    otp_app: :rockelivery,
    adapter: Ecto.Adapters.Postgres
end
