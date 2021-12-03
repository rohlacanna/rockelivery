defmodule RockeliveryWeb.UsersViewTest do
  use RockeliveryWeb.ConnCase, async: true

  import Phoenix.View
  import Rockelivery.Factory

  alias RockeliveryWeb.UsersView

  test "renders create.json" do
    user = build(:user)

    response = render(UsersView, "create.json", user: user)

    assert %{
             message: "User created!",
             user: %Rockelivery.User{
               address: "Rua das bananeiras, 15",
               age: 23,
               cep: "12345678",
               cpf: "12345678901",
               email: "romulo@banana.com",
               id: "a67fc24b-9145-4d67-a658-917ed1c50d2a",
               inserted_at: nil,
               name: "Rômulo",
               password: "123456",
               password_hash: nil,
               updated_at: nil
             }
           } = response
  end
end
