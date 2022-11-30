class RemoveClickedFromResources < ActiveRecord::Migration[7.0]
  def change
    remove_column :resources, :clicked, :integer
  end
end
