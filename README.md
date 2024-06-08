# PhoenixExample

How to?

1. clone it: `git clone https://www.github.com/paulo-ferraz-oliveira/phoenix_example`
2. cd into it: `cd phoenix_example`
3. support it with Docker: `docker compose up --wait`
4. bootstrap it:
    1. `mix deps.get`
    2. `mix deps.compile`
    3. `mix ecto.create`
    4. `mix ecto.migrate`
5. run it: `mix phx.server`
6. enjoy it: <http://localhost:4000>
