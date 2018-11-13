class CreateUserDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_donations do |t|
      t.belongs_to :user
      t.belongs_to :donation

      t.timestamps
    end
  end
end
