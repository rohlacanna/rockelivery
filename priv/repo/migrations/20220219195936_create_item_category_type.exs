defmodule Rockelivery.Repo.Migrations.CreateItemCategoryType do
  use Ecto.Migration

  def change do
    up_query = "CREATE TYPE item_category AS ENUM ('food', 'drink', 'desert')"
    down_query = "DROP ITEM item_category"

    execute(up_query, down_query)
  end
end
