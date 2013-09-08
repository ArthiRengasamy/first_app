# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  gender     :string(255)
#  email      :string(255)
#  address    :text
#  area       :string(255)
#  other      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :address, :area, :email, :gender, :name, :other  ,:password, :password_confirmation


  has_secure_password
  has_many :stories, dependent: :destroy



  GENDER_TYPES = ["select", "Male", "Female", "Transgender" , "Prefer not to disclose"]
  AREA_TYPES = ["select","Child Education", "Empowerment of Women", "Food for all", "Other"]

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true


  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
