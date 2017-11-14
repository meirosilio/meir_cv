class ChangeColumnexperinceIdd < ActiveRecord::Migration[5.1]
  def change
    rename_column :jobs, :experience_idd, :experience_id
  end
end
