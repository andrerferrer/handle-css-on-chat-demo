class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages
  has_many :chatrooms, through: :messages

  validates :nickname, presence: true

  before_create do |user|
    user.avatar_url = "http://loremflickr.com/280/280/#{user.nickname}" unless user.avatar_url
  end

end
