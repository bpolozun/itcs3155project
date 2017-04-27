class CreateApplicants < ActiveRecord::Migration[5.0]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :contact
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
