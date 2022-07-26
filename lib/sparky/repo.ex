defmodule Sparky.Repo do
  use Ecto.Repo,
    otp_app: :sparky,
    adapter: Ecto.Adapters.Postgres
end
