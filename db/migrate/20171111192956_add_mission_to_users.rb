class AddMissionToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :mission, :text
  end
end
