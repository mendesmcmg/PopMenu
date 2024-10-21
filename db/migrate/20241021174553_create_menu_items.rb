class CreateMenuItems < ActiveRecord::Migration[7.1]
  def change
    create_table :menu_items do |t|
      t.references :restaurant_menu, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.decimal :price
      t.string :category
      t.boolean :available

      t.timestamps
    end
  end
end
