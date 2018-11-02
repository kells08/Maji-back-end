class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :phone
      t.string :email
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :postcode
      
      t.timestamps
    end
  end
end
