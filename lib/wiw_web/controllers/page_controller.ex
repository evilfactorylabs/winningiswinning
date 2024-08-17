defmodule WiwWeb.PageController do
  use WiwWeb, :controller

  def home(conn, _params) do
    encrypted_message = Wiw.Repo.get!(Wiw.Message, 2)
    private_key = Application.get_env(:wiw, :saltpack)[:private_key]

    result =
      try do
        decrypted_message =
          encrypted_message.content
            |> Base.decode64!()
            |> Saltpack.open_message(Base.decode64!(private_key))

        {:ok, decrypted_message}

      rescue
        _e in _ -> {:error, "something went wrong"}
      end

      case result do
        {:ok, message} ->
          conn
            |> put_status(200)
            |> render(:home, message: message, layout: false)

        {:error, message} ->
          conn
            |> put_status(500)
            |> render(:home, message: message, layout: false)
      end
  end
end
