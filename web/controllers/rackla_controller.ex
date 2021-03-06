defmodule ApiGate.RacklaController do
  @moduledoc false

  use ApiGate.Web, :controller

  alias ApiGate.Repo

  import Rackla

def template(response) do
            IO.puts "Here we decode response."
            result = Poison.decode!(response)
 end


  # =========================================== #
  # Below is a collection of sample end-points. #
  # =========================================== #

	       
  def astute(conn, _params) do
       url = "http://astutedataguardian.azurewebsites.net/api/af72YlkXWRyUCynRbm72/readings?maxItems=1"
       headers = %{"x-ahc-api-token" => "839b18e2-97d7-4270-a794-c063cf636322", "x-ahc-api-key" => "cd3b2d2a-915d-4fa5-a98f-fbb3d19fa313"}
	%Rackla.Request{url: url, headers: headers}
	|> request
	|> response(json: true)
  end

  def tester(conn, _params) do
          IO.puts "Initiating request"
         "https://jsonplaceholder.typicode.com/comments?postId=100"
          |> request
	  |> Rackla.map(&template/1)
	  |> response(json: true)
          |> IO.inspect()
     end
			
  def swagger(conn, params) do
       rackla_url = "http://agile-ravine-57739.herokuapp.com/swagger/readings?maxItems=1"
        %Rackla.Request{url: rackla_url}    
	|> request
        |> response
      end

	   
end
