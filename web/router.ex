defmodule ApiGate.Router do
  use ApiGate.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ApiGate do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/astute", RacklaController, :astute
    get "/tester", RacklaController, :tester
    get "/swagger", RacklaController, :swagger	  
end

  # Other scopes may use custom stacks.
   scope "/api", ApiGate do
    pipe_through :api
    get "/swagger", RacklaController, :swagger
   end
end
