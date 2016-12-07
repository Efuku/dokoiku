class AddPlanIdToComments < ActiveRecord::Migration
  def change
    remove_column :comments, :plans_id, :integer
    add_column :comments, :plan_id, :integer
  end
end
