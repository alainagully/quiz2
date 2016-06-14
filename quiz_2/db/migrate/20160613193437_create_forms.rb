class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :name
      t.string :email
      t.string :department
      t.text :comment

      t.timestamps null: false
    end
  end
end
