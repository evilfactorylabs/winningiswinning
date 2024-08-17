defmodule WiwWeb.PageJSON do
  def home(%{message: message}) do
    %{message: message}
  end
end
