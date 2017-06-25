class AddUniqueConstraints < ActiveRecord::Migration[5.1]
  def change
    add_index :activities, :name, unique: true
    add_index :customers, :cnpj, unique: true
    add_index :customers, :company, unique: true
    add_index :customers, :name, unique: true
    add_index :departments, :name, unique: true
    add_index :products, :name, unique: true
    add_index :proposal_statuses, :name, unique: true
    add_index :reasons, :name, unique: true
    add_index :regions, :name, unique: true
    add_index :users, :name, unique: true
  end
end
