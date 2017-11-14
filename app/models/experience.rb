class Experience < ApplicationRecord

  has_many :jobs
  has_many :users


  validates :name, presence: true
  before_save :upercase

  private
  def upercase
    self.name.upcase!
  end


end
