class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :company
      t.string :cnpj
      t.string :ie
      t.string :email
      t.string :phone
      t.string :mobile
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
