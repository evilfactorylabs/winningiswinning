defmodule Wiw.Repo do
  use Ecto.Repo,
    otp_app: :wiw,
    adapter: Ecto.Adapters.Postgres
end
