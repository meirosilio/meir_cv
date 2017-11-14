class ChanageExperienceTableNameToExperienceCategory < ActiveRecord::Migration[5.1]
  def change
    rename_table :experience_categories, :experience_categories
  end
end
