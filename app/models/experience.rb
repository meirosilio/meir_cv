class Experience < ApplicationRecord
  has_many :jobs
  validates :name, presence: true
  before_save :upercase


  private
  def upercase
    self.name.upcase!
  end


end
