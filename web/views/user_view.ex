defmodule FrolfrApi.UserView do
  use FrolfrApi.Web, :view
  use JaSerializer.PhoenixView

  attributes [:email, :password_hash, :inserted_at, :updated_at]
  

end
