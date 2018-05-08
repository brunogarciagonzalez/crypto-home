class CreateCurrencies < ActiveRecord::Migration[5.1]
  def change
    create_table :currencies do |t|
      t.string :api_historical
      t.string :api_live

      t.timestamps
    end
  end
end
