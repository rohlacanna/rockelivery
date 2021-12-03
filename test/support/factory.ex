defmodule Rockelivery.Factory do
  use ExMachina

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
end
