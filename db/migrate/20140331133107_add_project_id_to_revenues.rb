class AddProjectIdToRevenues < ActiveRecord::Migration
  def change
    add_column :revenues, :project_id, :integer
  end
end
