Sequel.migration do
  change do
    create_table(:occasions) do
      primary_key :id
      foreign_key :gathering_id, :gatherings

      Date :date_held, null: false
    end
  end
end