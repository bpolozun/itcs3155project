class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :groupName
      t.text :description
      t.integer :numberNeeded
      t.integer :numberTotal
      t.String :category

      t.timestamps
    end
  end
end
