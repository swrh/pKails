class CreateIndications < ActiveRecord::Migration[5.1]
  def change
    create_table :indications do |t|
      t.string :who
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
