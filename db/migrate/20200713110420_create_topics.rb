class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.references :user
      t.string :name
      t.string :url
      t.integer :total_members

      t.timestamps
    end
  end
end
