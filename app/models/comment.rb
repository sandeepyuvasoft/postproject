class Comment < ApplicationRecord
	belongs_to :user,optional: true
	belongs_to :post,optional: true
	has_many :replies ,dependent: :destroy
end
