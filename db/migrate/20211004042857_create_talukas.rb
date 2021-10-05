class CreateTalukas < ActiveRecord::Migration[6.1]
  def change
    create_table :talukas do |t|
      t.string :name
      t.references :dist, null: false, foreign_key: true
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
