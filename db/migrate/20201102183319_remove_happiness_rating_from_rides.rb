class RemoveHappinessRatingFromRides < ActiveRecord::Migration[5.2]
  def change
    remove_column :rides, :happiness_rating, :integer
  end
end
