class CreateQuests < ActiveRecord::Migration[5.1]
  def change
    create_table :quests do |t|
      t.string :name
      t.text :description
      t.string :hint
      t.integer :user_id
      t.integer :location_id
      t.integer :prize

      t.timestamps
    end
  end
end
