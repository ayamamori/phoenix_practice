ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixPractice.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixPractice.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixPractice.Repo)

