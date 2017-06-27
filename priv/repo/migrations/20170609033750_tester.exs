defmodule ApiGate.Repo.Migrations.Tester do
  use Ecto.Migration

  def change do
    create table(:tester) do
    add :postID, :integer
    add :mesgid, :integer
    add :name, :string
    add :email, :string
    add :body, :string
    timestamps()
  end
end

end
