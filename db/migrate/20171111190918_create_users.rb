class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :home_address
      t.string :phone_number
      t.string :email_address

      t.timestamps
    end
  end
end
