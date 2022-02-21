defmodule ProjectMoodsWeb.PageView do
  use ProjectMoodsWeb, :view

  def render("index.json", _params) do
    %{
      date: Date.utc_today(),
      moods: [
        %{
          name: "Kevin",
          mood: 3
        },
        %{
          name: "Alexandros",
          mood: 3
        },
        %{
          name: "Tobias",
          mood: 5
        },
        %{
          name: "Andreas",
          mood: 3
        }
      ]
    }
  end

  def render("index_by_date.json", %{year: year, month: month, day: day}) do
    {year, _} = Integer.parse(year)
    {month, _} = Integer.parse(month)
    {day, _} = Integer.parse(day)

    date = Date.new!(year, month, day)

    %{
      date: Date.to_string(date),
      moods: [
        %{
          name: "Kevin",
          mood: rem(year, 5) + 1
        },
        %{
          name: "Alexandros",
          mood: rem(day, 5) + 1
        },
        %{
          name: "Tobias",
          mood: rem(month, 5) + 1
        },
        %{
          name: "Andreas",
          mood: rem(day, 5) + 1
        }
      ]
    }
  end
end
