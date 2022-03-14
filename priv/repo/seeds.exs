# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Rockelivery.Repo.insert!(%Rockelivery.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Rockelivery.{Item, Order, Repo, User}

user = %User{
  age: 23,
  address: "Rua dos tomates, 15",
  cep: "12345678",
  cpf: "98765432101",
  email: "romulotomate@frutas.com",
  password: "123456",
  name: Rômulo
}

%User{id: user_id} = Repo.insert!(user)

item1 = %Item{
  category: :food,
  description: "tomate com sal",
  price: Decimal.new("15.50"),
  photo: "priv/photos/tomate_sal.png"
}

item1 = %Item{
  category: :food,
  description: "tomate sem sal",
  price: Decimal.new("10.50"),
  photo: "priv/photos/tomate.png"
}

Repo.insert!(item1)
Repo.insert!(item2)

order = %Order{
  user_id: user_id,
  items: [item1, item1, item2],
  address: "Rua dos tomates, 15",
  comments: "sem cozinhar",
  payment_method: :money
}

Repo.insert!(order)
