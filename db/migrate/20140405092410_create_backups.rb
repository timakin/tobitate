class CreateBackups < ActiveRecord::Migration
  def change
    create_table :backups do |t|
      t.integer :project_id
      t.integer :user_id
      t.integer :revenue_id

      t.timestamps
    end
  end
end
