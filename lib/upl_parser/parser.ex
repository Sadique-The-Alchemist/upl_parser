defmodule UplParser.Parser do
  @moduledoc """
  Module to parse contents form html by using Floki
  """
  @image "img"
  @link "a"
  @image_attr "src"
  @link_attr "href"

  @doc """
  Pars urls of image from given html
  """
  def parse_images(url) do
    parse(url, @image, @image_attr)
  end

  @doc """
  Parse urls of link from given html
  """
  def parse_links(url) do
    parse(url, @link, @link_attr)
  end

  @doc """
  Function to parse urls from a html by tag and attribute
  ## Parameters
  * url - Html file url
  * tag - html tag
  * attribute - attribute for url
  """
  def parse(url, tag, attribute) do
    {:ok, document} = Floki.parse_document(url)
    document |> Floki.find(tag) |> Floki.attribute(attribute)
  end
end
