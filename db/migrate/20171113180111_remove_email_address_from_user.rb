class RemoveEmailAddressFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :email_address, :string
  end
end
