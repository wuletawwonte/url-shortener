class RemoveResourcesTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :resources_tables
  end
end
