defmodule Servy.Plugins do
  def decorate(%{status: 200, resp_body: body} = conv) do
    %{conv | resp_body: "🎉 #{body} 🎉"}
  end

  def decorate(conv), do: conv

  def track(%{status: 404, path: path} = conv) do
    conv
  end

  def track(conv), do: conv

  def log(conv), do: IO.inspect(conv)
end
