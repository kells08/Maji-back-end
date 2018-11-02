class CreateContributions < ActiveRecord::Migration[5.2]
  def change
    create_table :contributions do |t|
      t.belongs_to :user
      t.belongs_to :project

      t.timestamps
    end
  end
end
