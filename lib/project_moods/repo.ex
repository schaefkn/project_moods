defmodule ProjectMoods.Repo do
  use Ecto.Repo,
    otp_app: :project_moods,
    adapter: Ecto.Adapters.Postgres
end
