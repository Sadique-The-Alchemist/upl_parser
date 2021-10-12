defmodule UplParserWeb.ParserControllerTest do
  use UplParserWeb.ConnCase
  @html "<!doctype html>
  <html>
  <body>
    <section id=\"content\">
      <p class=\"headline\">Floki</p>
      <span class=\"headline\">Enables search using CSS selectors</span>
      <a href=\"https://github.com/philss/floki\">Github page</a>
      <img src=\"http://placehold.it/120x120&text=image1\"/>
      <span data-model=\"user\">philss</span>
    </section>
    <a href=\"https://hex.pm/packages/floki\">Hex package</a>
  </body>
  </html>"

  describe "images/2" do
    test "images will list the list of image urls from html" do
      conn = build_conn()
      conn = get(conn, Routes.parser_path(conn, :images, url: @html))
      assert json_response(conn, 200) == ["http://placehold.it/120x120&text=image1"]
    end
  end

  describe "links/2" do
    test "links will lists containing hrefs from html" do
      conn = build_conn()
      conn = get(conn, Routes.parser_path(conn, :links, url: @html))

      assert json_response(conn, 200) == [
               "https://github.com/philss/floki",
               "https://hex.pm/packages/floki"
             ]
    end
  end
end
