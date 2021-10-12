defmodule UplParserWeb.ParserView do
  use UplParserWeb, :view

  def render("parser.json", %{list: list}) do
    list
  end
end
