Sequel.migration do
  change do
    create_table :gatherings do
      primary_key :id

      String :name, null: false
      String :time, null: false
    end
  end
end