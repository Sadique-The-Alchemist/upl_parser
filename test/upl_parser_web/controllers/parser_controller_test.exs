# defmodule UplParserWeb.ParserControllerTest do
#   use UplParserWeb.ConnCase
#   @html "/test.html"

#   describe "images/2" do
#     test "images will list the list of image urls from html" do
#       conn = build_conn()
#       conn = get(conn, Routes.parser_path(conn, :images, url: @html))
#       assert json_response(conn, 200) == ["http://placehold.it/120x120&text=image1"]
#     end
#   end

#   describe "links/2" do
#     test "links will lists containing hrefs from html" do
#       conn = build_conn()
#       conn = get(conn, Routes.parser_path(conn, :links, url: @html))

#       assert json_response(conn, 200) == [
#                "https://github.com/philss/floki",
#                "https://hex.pm/packages/floki"
#              ]
#     end
#   end
# end
