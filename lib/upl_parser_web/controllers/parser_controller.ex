defmodule UplParserWeb.ParserController do
  use UplParserWeb, :controller
  alias UplParser.Parser

  def images(conn, %{"url" => url}) do
    list = Parser.parse_image(url)
    render(conn, "parser.json", list: list)
  end
end
