defmodule ProjectMoodsWeb.PageController do
  use ProjectMoodsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.json")
  end

  def index_by_date(conn, %{"year" => year, "month" => month, "day" => day}) do
    render(conn, "index_by_date.json", year: year, month: month, day: day)
  end
end
