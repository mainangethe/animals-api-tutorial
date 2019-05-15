class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people, id: :uuid do |t|
      t.string :name, null: false
      t.integer :age, null: false

      t.timestamps
    end
  end
end
