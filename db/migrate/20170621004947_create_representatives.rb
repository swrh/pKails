class CreateRepresentatives < ActiveRecord::Migration[5.1]
  def change
    create_table :representatives do |t|
      t.string :company
      t.string :contact
      t.string :sponsor

      t.timestamps
    end
  end
end
