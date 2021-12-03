defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Rockelivery.User

  def user_params_factory do
    %{
      "age" => 23,
      "address" => "Rua das bananeiras, 15",
      "cep" => "12345678",
      "cpf" => "12345678901",
      "email" => "romulo@banana.com",
      "password" => "123456",
      "name" => "Rômulo"
    }
  end

  def user_factory do
    %User{
      age: 23,
      address: "Rua das bananeiras, 15",
      cep: "12345678",
      cpf: "12345678901",
      email: "romulo@banana.com",
      password: "123456",
      name: "Rômulo",
      id: "a67fc24b-9145-4d67-a658-917ed1c50d2a"
    }
  end
end
