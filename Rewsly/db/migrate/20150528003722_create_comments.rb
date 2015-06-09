class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text 
      t.timestamps null: false
      
      t.references :user 
      t.references :story
    end
  end
end
