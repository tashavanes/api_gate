defmodule API.Response do
	use Ecto.Schema
	import Ecto.Changeset

schema "response" do
field :continuationToken, :string
     field :readingId, :string
     field :gatewayId, :string
     field :gatewayType, :string
     field :deviceMac, :string
     field :serverTimestamp, :string
     field :readingTimeDevice, :string
     field :readingTimeUTC, :string
     field :readingTimeSource, :string
     field :deviceType, :string
     field :patientToken, :string
     field :bpSystolic, :integer
     field :bpDiastolic, :integer
     field :bpPulse, :integer
     field :poxPulse, :integer
     field :pox02, :float
     field :weightScale, :integer
     field :glucConc, :integer
     field :glucFasting, :boolean, default: false
     timestamps()
    end

def changeset(response, params \\%{}) do
response
|> cast(params, [:continuationToken, :readingId, :gatewayId, :gatewayType, :deviceMac, :serverTimestamp, :readingTimeDevice, :readingTimeUTC, :readingTimeSource, :deviceType, :patientToken, :bpSystolic, :bpDiastolic, :bpPulse, :poxPulse, :pox02, :weightScale, :glucConc, :glucFasting])
	end
end
