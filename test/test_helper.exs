ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Rockelivery.Repo, :manual)

Mox.defmock(Rockelivery.ViaCep.ClientMock, for: Rockelivery.ViaCep.Behaviour)
