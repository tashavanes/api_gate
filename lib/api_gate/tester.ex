defmodule ApiGate.Tester do
	use Ecto.Schema

schema "tester" do
     field :postID, :integer
     field :mesgid, :integer
     field :name, :string
     field :email, :string
     field :body, :string
     timestamps()
    end
end
