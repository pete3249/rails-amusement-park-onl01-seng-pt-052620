class RemoveNauseaRatingFromRides < ActiveRecord::Migration[5.2]
  def change
    remove_column :rides, :nausea_rating, :integer
  end
end
