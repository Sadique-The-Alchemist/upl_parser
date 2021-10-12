defmodule UplParserWeb.ParserView do
  use UplParserWeb, :view

  def render("parser.json", %{list: list, tag: tag}) do
    %{
      tag: tag,
      list: render_many(list, "item.json", as: :item)
    }
  end

  def render("item.json", %{item: item}) do
    item
  end
end
