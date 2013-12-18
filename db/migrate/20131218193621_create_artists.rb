class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number
      t.string :birthplace
      t.string :style

      t.timestamps
    end
  end
end
