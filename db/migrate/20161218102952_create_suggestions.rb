class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.text :text
      t.string :reference_url
      t.integer :user_id
      t.integer :plan_id
      t.timestamps 
    end
  end
end
