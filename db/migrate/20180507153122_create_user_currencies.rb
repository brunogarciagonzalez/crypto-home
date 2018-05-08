class CreateUserCurrencies < ActiveRecord::Migration[5.1]
  def change
    create_table :user_currencies do |t|
      t.integer :user_id
      t.integer :currency_id

      t.timestamps
    end
  end
end
