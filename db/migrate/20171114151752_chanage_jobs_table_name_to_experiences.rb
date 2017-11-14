class ChanageJobsTableNameToExperiences < ActiveRecord::Migration[5.1]
  def change
    rename_table :experiences, :experience_categories
  end
end
