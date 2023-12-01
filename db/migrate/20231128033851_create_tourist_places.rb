class CreateTouristPlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :tourist_places do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :phone_number
      t.string :opening_hours
      t.string :website_url
      t.string :photo
      t.string :label

      t.timestamps
    end
  end
end
