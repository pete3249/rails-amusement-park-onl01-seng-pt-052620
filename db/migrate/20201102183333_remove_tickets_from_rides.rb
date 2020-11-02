class RemoveTicketsFromRides < ActiveRecord::Migration[5.2]
  def change
    remove_column :rides, :tickets, :integer
  end
end
