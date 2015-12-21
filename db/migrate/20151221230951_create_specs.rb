class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      t.string :description
      t.references :instrument, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
