class User < ApplicationRecord
  has_many :likes ,dependent: :destroy
 	has_many :posts ,dependent: :destroy
  has_many :comments ,dependent: :destroy
  has_many :replies ,dependent: :destroy
  mount_uploader :image, PicUploader
  serialize :avatars, JSON

  validates_presence_of :firstname
  validates_presence_of :surname
  validates_presence_of :mobilenumber
  validates_uniqueness_of :mobilenumber
  validates_presence_of :birthday
  validates_presence_of :gender
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
      
  def self.find_for_database_authentication(conditions={})
  find_by(mobilenumber: conditions[:email]) || find_by(email: conditions[:email])
  end 

end
