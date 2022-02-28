defmodule Rockelivery.ViaCep.Behaviour do
  alias Rockelivery.Error

  @callback get_cep_info(String.t()) :: {:ok, map()} | {:error, Error.t()}
end
