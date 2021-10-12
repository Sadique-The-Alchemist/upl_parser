defmodule UplParser.Parser do
  def parse(url, tag) do
    {:ok, document} = Floki.parse_document(url)
    require IEx
    IEx.pry()
  end
end
