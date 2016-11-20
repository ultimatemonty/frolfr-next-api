defmodule FrolfrApi.Router do
  use FrolfrApi.Web, :router

  pipeline :api do
    plug :accepts, ["json-api"]
  end

  scope "/api", FrolfrApi do
    pipe_through :api
	resources "/users", UserController, except: [:new, :edit]
  end
end
