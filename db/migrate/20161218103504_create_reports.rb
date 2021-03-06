class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :destination
      t.string :month
      t.string :season
      t.string :number_of_nights
      t.string :transportation
      t.string :budget
      t.text :text
      t.integer :user_id
      t.timestamps 
    end
  end
end
