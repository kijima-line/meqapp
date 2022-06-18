class CreateMees < ActiveRecord::Migration[6.1]
  def change
    create_table :mees do |t|

      t.timestamps
    end
  end
end
