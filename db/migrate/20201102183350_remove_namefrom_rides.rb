class RemoveNamefromRides < ActiveRecord::Migration[5.2]
  def change
    remove_column :rides, :name, :string
  end
end
