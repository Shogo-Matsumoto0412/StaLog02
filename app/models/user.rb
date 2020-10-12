class User < ApplicationRecord

  has_many :posts
  has_many :fields
  has_many :likes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :profile_image, ProfileImageUploader

  def liked_by?(post_id)
    likes.where(post_id: post_id).exists?
  end
end
