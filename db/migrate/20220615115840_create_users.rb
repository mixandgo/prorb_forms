class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.date :bday
      t.string :city
      t.string :phone

      t.references :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
