class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :street_address
      t.string :city
      t.string :state
      t.string :phone

      t.timestamps
    end
  end
end
