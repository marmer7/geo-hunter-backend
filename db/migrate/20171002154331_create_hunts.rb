class CreateHunts < ActiveRecord::Migration[5.1]
  def change
    create_table :hunts do |t|
      t.integer :user_id
      t.integer :quest_id
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
