class AddClickedToResources < ActiveRecord::Migration[7.0]
  def change
    add_column :resources, :clicked, :integer, default: 0
  end
end
