class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :get_plans_id
      t.text :text
      t.string :reference_url
      t.timestamps
    end
  end
end
