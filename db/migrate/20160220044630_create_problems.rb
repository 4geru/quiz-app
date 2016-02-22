class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :content
      t.integer :result
      t.integer :sum
      t.integer :user_id
      t.string :select1
      t.string :select2
      t.string :select3
      t.string :select4
      t.integer :result_id
      t.timestamps null: false
    end
  end
end
