use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :api_gate, ApiGate.Endpoint,
  secret_key_base: "6LALoKMFe8vMFn3j7aeJj9cFysyxhY7ofgK0rVh6wMj8Jy7Oe73kyV3ITOmmuDaB"

# Configure your database
config :api_gate, ApiGate.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "api_gate_prod",
  pool_size: 20
