class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats, id: :uuid do |t|
      t.string :name, null: false
      t.string :breed, null: false
      t.string :age, null: false
      t.string :favourite_food, null: false
      t.references :person, foreign_key: true, dependent: :delete, type: :uuid

      t.timestamps
    end
  end
end
