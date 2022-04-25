class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.references :group, null: false, foreign_key: true
      t.string :name
      t.integer :age


      t.timestamps
    end
  end
end
