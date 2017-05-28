class AddToProject < ActiveRecord::Migration[5.0]
  def change
  	add_column :projects, :projectcost, :integer
  	add_column :payments, :project_id, :integer
  end
end
