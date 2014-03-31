class AddUserIdToRevenues < ActiveRecord::Migration
  def change
    add_column :revenues, :user_id, :integer
  end
end
