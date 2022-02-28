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

  def cep_info_factory do
    %{
      "bairro" => "Sé",
      "cep" => "01001-000",
      "complemento" => "lado ímpar",
      "ddd" => "11",
      "gia" => "1004",
      "ibge" => "3550308",
      "localidade" => "São Paulo",
      "logradouro" => "Praça da Sé",
      "siafi" => "7107",
      "uf" => "SP"
    }
  end
end
