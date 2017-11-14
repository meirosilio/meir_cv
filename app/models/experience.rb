class Experience < ApplicationRecord

  belongs_to :experience_category
  belongs_to :user
end
