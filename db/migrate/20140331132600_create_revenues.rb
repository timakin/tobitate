class CreateRevenues < ActiveRecord::Migration
  def change
    create_table :revenues do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.boolean :originality
      t.boolean :confirmed

      t.timestamps
    end
  end
end
