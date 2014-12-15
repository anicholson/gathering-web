Sequel.migration do
  change do
    create_table :roles do
      primary_key :id

      String    :name, null: false
      TrueClass :team, null: false
    end

    create_table :gatherings_roles do
      foreign_key :gathering_id, :gatherings, null: false
      foreign_key :role_id,      :roles,      null: false

      primary_key [:gathering_id, :role_id], name: :gathering_roles_pk

    end
  end
end