defmodule AuthMe.Repo do
  use Ecto.Repo,
    otp_app: :auth_me,
    adapter: Ecto.Adapters.Postgres
end
