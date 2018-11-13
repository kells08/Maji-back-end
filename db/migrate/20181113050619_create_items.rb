class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.string :image_url
      t.string :description
      t.string :details
      t.string :price
      t.string :category

      t.timestamps
    end
  end
end
