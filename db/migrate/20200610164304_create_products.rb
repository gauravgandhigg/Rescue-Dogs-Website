class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :descripton
      t.string :image
      t.decimal :price

      t.timestamps
    end
  end
end
