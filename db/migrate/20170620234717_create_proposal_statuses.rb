class CreateProposalStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :proposal_statuses do |t|
      t.string :name
      t.boolean :finish

      t.timestamps
    end
  end
end
