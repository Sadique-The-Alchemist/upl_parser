defmodule UplParserWeb.ParserController do
  use UplParserWeb, :controller
  alias UplParser.Parser

  def parse(conn, %{"url" => url, "tag" => tag}) do
    Parser.parse(url, tag)
    conn
  end
end
