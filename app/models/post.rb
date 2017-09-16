class Post < ApplicationRecord
	mount_uploader :pic, PicUploader
	serialize :avatars, JSON
	has_many :likes,dependent: :destroy
	has_many :comments,dependent: :destroy
	has_many :replies,dependent: :destroy
	belongs_to :user,optional: true

end
