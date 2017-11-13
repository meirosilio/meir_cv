class Job < ApplicationRecord
  belongs_to :Experience
  belongs_to :user
end
