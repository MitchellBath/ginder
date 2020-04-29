class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :biography
      t.string :favorite_game
      t.string :casual_or_competitive

      t.timestamps
    end
  end
end
