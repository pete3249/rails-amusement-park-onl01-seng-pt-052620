class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.string :name
      t.integer :tickets
      t.integer :nausea_rating
      t.integer :happiness_rating
      t.references :user, foreign_key: true
      t.references :attraction, foreign_key: true
    end
  end
end
