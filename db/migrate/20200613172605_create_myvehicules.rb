class CreateMyvehicules < ActiveRecord::Migration[6.0]
  def change
    create_table :myvehicules do |t|
      t.string :brand
      t.string :vehicule
      t.integer :year
      t.text :description
      t.boolean :sold

      t.timestamps
    end
  end
end
