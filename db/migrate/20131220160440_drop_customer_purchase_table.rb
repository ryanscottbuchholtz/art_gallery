class DropCustomerPurchaseTable < ActiveRecord::Migration
  def change
    drop_table :customer_purchases
  end

end
