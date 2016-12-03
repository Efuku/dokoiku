class CreateGetPlans < ActiveRecord::Migration
  def change
    create_table :get_plans do |t|
      t.string :destination
      t.string :season
      t.string :number_of_nights
      t.string :transportation
      t.string :budget
      t.text :remarks
      t.integer :user_id
      t.timestamps 
    end
  end
end
