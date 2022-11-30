class CreateResourcesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :resources_tables do |t|
      t.string :long_url
      t.string :short_url
      t.integer :clicked

      t.timestamps
    end
  end
end
