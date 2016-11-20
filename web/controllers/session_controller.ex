defmodule FrolfrApi.SessionController do
    use FrolfrApi.Web, :controller

    def index(conn, _params) do
        #return some static json for now
        conn |> json(%{status: "Ok"})
    end
end
