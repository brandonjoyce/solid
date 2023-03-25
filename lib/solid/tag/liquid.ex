defmodule Solid.Tag.Liquid do
  import NimbleParsec
  alias Solid.Parser.{BaseTag, Literal, Variable}

  @behaviour Solid.Tag

  @impl true
  def spec(parser) do
    dbg(parser)
    space = Literal.whitespace(min: 0)

    ignore(BaseTag.opening_tag())
    |> ignore(string("liquid"))
    |> ignore(space)
    |> ignore(BaseTag.closing_tag())
  end

  @impl true
  def render(what_is_this, context, options) do
    dbg({what_is_this, context, options})
    {[], context}
  end
end
