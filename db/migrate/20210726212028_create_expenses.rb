class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.string :category
      t.bigint :amount
      t.string :description
      t.string :requester
      t.boolean :high_cost
      t.timestamps
    end
  end
end
