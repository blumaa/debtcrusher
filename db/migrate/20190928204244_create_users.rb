class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :account_balance, default:0
      t.timestamps
    end
  end
end
