class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  :timeoutable and :omniauthable

  has_many :experiences
  has_many :skills
  has_many :experience_categories, through: :experiences

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable

  validates :first_name, presence: true
  validates :last_name, presence: true

  def send_devise_notification(notification, *args)
    devise_mailer.send(notification, self, *args).deliver_later
  end

end
