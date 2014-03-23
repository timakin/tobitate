class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :goal_price
      t.date :start_date
      t.date :limit_date
      t.integer :now_price

      t.timestamps
    end
  end
end
