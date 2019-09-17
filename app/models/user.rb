class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :username, uniqueness: true, presence: true

  scope :online, lambda { where("updated_at > ?", 10.minutes.ago) }

  def online?
  	updated_at > 10.minutes.ago
  end

end
