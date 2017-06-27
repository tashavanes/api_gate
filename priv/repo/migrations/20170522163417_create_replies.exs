defmodule ApiGate.Repo.Migrations.CreateReplies do
  use Ecto.Migration
 

  def change do
    create table(:responses) do
     add :continuationToken, :string
     add :readingId, :string
     add :gatewayId, :string
     add :gatewayType, :string
     add :deviceMac, :string
     add :serverTimestamp, :string
     add :readingTimeDevice, :string
     add :readingTimeUTC, :string
     add :readingTimeSource, :string
     add :deviceType, :string
     add :patientToken, :string
     add :bpSystolic, :integer
     add :bpDiastolic, :integer
     add :bpPulse, :integer
     add :poxPulse, :integer
     add :pox02, :float
     add :weightScale, :integer
     add :glucConc, :integer
     add :glucFasting, :boolean, default: false
     timestamps()
    end
  end
end
