class CreateMees < ActiveRecord::Migration[6.1]
  def change
    create_table :mees do |t|
      t.string :title
      t.string :q_1
      t.string :q_2
      t.string :q_3
      t.string :q_4
      t.string :q_5
      t.string :q_6
      t.string :q_7
      t.string :q_a,null: false
      t.string :q_b,null: false
      t.integer :user_id
      t.timestamps
    end
  end
end
