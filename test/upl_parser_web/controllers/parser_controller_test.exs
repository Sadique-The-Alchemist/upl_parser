defmodule UplParserWeb.ParserControllerTest do
  use UplParserWeb.ConnCase
  @html "<!doctype html>
  <html>
  <body>
    <section id=\"content\">
      <p class=\"headline\">Floki</p>
      <span class=\"headline\">Enables search using CSS selectors</span>
      <a href=\"https://github.com/philss/floki\">Github page</a>
      <span data-model=\"user\">philss</span>
    </section>
    <a href=\"https://hex.pm/packages/floki\">Hex package</a>
  </body>
  </html>"

  describe "parse/2" do
    test "parser will parse given tag from the html" do
      conn = build_conn()
      conn = get(conn, Routes.parser_path(conn, :parse, url: @html, tag: "a"))
    end
  end
end
