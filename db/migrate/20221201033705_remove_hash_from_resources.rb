class RemoveHashFromResources < ActiveRecord::Migration[7.0]
  def change
    remove_column :resources, :hash, :string
  end
end
