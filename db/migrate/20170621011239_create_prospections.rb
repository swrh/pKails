class CreateProspections < ActiveRecord::Migration[5.1]
  def change
    create_table :prospections do |t|
      t.references :customer, foreign_key: true
      t.references :product, foreign_key: true
      t.decimal :value

      t.timestamps
    end
  end
end
