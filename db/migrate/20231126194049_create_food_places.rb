class CreateFoodPlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :food_places do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :phone_number
      t.string :opening_hours

      t.timestamps
    end
  end
end
