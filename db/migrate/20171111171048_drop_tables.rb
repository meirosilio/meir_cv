class DropTables < ActiveRecord::Migration[5.1]
  def change
    drop_table :educations
    drop_table :employment_histories
    drop_table :military_services
    drop_table :volunteers
  end
end
