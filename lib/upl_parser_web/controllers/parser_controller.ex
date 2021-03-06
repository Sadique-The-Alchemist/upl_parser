defmodule UplParserWeb.ParserController do
  use UplParserWeb, :controller
  alias UplParser.Parser

  def images(conn, %{"url" => url}) do
    list = Parser.parse_images(url)
    render(conn, "parser.json", list: list)
  end

  def links(conn, %{"url" => url}) do
    list = Parser.parse_links(url)
    render(conn, "parser.json", list: list)
  end
end
