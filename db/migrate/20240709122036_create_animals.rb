class CreateAnimals < ActiveRecord::Migration[7.1]
  def change
    create_table :animals do |t|
      t.string :nom
      t.string :especes
      t.integer :age
      t.string :localisation
      t.integer :prix
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
