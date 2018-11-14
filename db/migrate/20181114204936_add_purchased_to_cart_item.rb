class AddPurchasedToCartItem < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_items, :purchased, :boolean
  end
end
