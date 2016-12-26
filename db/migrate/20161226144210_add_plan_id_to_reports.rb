class AddPlanIdToReports < ActiveRecord::Migration
  def change
    add_column :reports, :plan_id, :integer
    add_column :reports, :suggestion_id, :integer
  end
end
